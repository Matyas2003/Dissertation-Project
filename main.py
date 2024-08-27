# from sklearn.neural_network import MLPClassifier
# from UDPclient import send_udp
# from emotion_recognition import EmotionRecognizer
# from sklearn.svm import SVC
from deep_emotion_recognition import DeepEmotionRecognizerRNN

# def main1():
#     # init a model, let's use SVC
#     my_model = SVC()
#     # pass my model to EmotionRecognizer instance
#     # and balance the dataset
#     rec = EmotionRecognizer(model=my_model, emotions=['sad', 'neutral', 'happy'], balance=True, verbose=0)
#     # train the model
#     rec.train()
#     # check the test accuracy for that model
#     print("Test score:", rec.test_score())
#     # check the train accuracy for that model
#     print("Train score:", rec.train_score())
#
#     # loads the best estimators from `grid` folder that was searched by GridSearchCV in `grid_search.py`,
#     # and set the model to the best in terms of test score, and then train it
#     #
#     rec.determine_best_model()
#     # get the determined sklearn model name
#     print(rec.model.__class__.__name__, "is the best")
#     # get the test accuracy score for the best estimator
#     print("Test score:", rec.test_score())
#
#     # this is a neutral speech from emo-db from the testing set
#     print("Prediction:", rec.predict("data/emodb/wav/15a04Nc.wav"))
#     prob1 = rec.predict_proba("data/emodb/wav/15a04Nc.wav")
#     print(prob1)
#     # this is a sad speech from TESS from the testing set
#     print("Prediction:", rec.predict("data/validation/Actor_25/25_01_01_01_back_sad.wav"))
#     prob2 = rec.predict_proba("data/validation/Actor_25/25_01_01_01_back_sad.wav")
#     print(prob2)
#
#     # send_udp(prob1)


if __name__ == "__main__":
    print("Starting\n")
    # initialize instance
    # inherited from emotion_recognition.EmotionRecognizer
    # default parameters (LSTM: 128x2, Dense:128x2)
    deeprec = DeepEmotionRecognizerRNN(
        emotions=['angry', 'sad', 'neutral', 'happy', 'fear', 'disgust', 'ps'],
        n_rnn_layers=2, n_dense_layers=2, rnn_units=64, dense_units=64, epochs=500, batch_size=128)
    print("Train the model\n")
    deeprec.train()
    # get the accuracy
    print(deeprec.test_score())
    # predict angry audio sample
    prediction = deeprec.predict_proba('data/validation/Actor_22/22_02_01_01_dogs-sitting_happy.wav')
    print(f"Prediction: {deeprec.predict('data/validation/Actor_22/22_02_01_01_dogs-sitting_happy.wav')}, {prediction} ")
