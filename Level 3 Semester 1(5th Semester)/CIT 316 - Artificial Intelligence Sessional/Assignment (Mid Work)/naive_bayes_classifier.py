import math

# Sample dataset (Outlook, Temperature, PlayTennis)
dataset = [
    ['Sunny', 'Hot', 'No'],
    ['Sunny', 'Hot', 'No'],
    ['Overcast', 'Hot', 'Yes'],
    ['Rain', 'Mild', 'Yes'],
    ['Rain', 'Cool', 'Yes'],
    ['Rain', 'Cool', 'No'],
    ['Overcast', 'Cool', 'Yes'],
    ['Sunny', 'Mild', 'No'],
    ['Sunny', 'Cool', 'Yes'],
    ['Rain', 'Mild', 'Yes'],
    ['Sunny', 'Mild', 'Yes'],
    ['Overcast', 'Mild', 'Yes'],
    ['Overcast', 'Hot', 'Yes'],
    ['Rain', 'Mild', 'No']
]

# Train function
def train_naive_bayes(data):
    label_counts = {}
    feature_counts = {}

    for row in data:
        outlook, temp, label = row

        # Count labels
        label_counts[label] = label_counts.get(label, 0) + 1

        # Count features conditional on labels
        if label not in feature_counts:
            feature_counts[label] = {"Outlook": {}, "Temp": {}}

        feature_counts[label]["Outlook"][outlook] = feature_counts[label]["Outlook"].get(outlook, 0) + 1
        feature_counts[label]["Temp"][temp] = feature_counts[label]["Temp"].get(temp, 0) + 1

    return label_counts, feature_counts


# Predict function with probability output
def predict_naive_bayes(x, label_counts, feature_counts):
    total = sum(label_counts.values())
    probs = {}

    for label in label_counts:
        # Prior probability
        probs[label] = label_counts[label] / total

        # Likelihood (multiply conditional probabilities)
        for i, feature in enumerate(["Outlook", "Temp"]):
            value = x[i]
            count = feature_counts[label][feature].get(value, 0)
            probs[label] *= (count + 1) / (label_counts[label] + len(feature_counts[label][feature]))  # Laplace smoothing

    # Normalize to percentages
    prob_sum = sum(probs.values())
    for label in probs:
        probs[label] = round((probs[label] / prob_sum) * 100, 2)

    return probs


# Train model
label_counts, feature_counts = train_naive_bayes(dataset)

# Test prediction
test_sample = ['Sunny', 'Cool']  # Outlook=Sunny, Temp=Cool
probabilities = predict_naive_bayes(test_sample, label_counts, feature_counts)

print("Test Sample:", test_sample)
print("Probabilities:", probabilities)
print("Predicted Class:", max(probabilities, key=probabilities.get))
