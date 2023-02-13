# Datasets


## Datasets

### Vision
- Aidacalc: labeled pictures of math equations
- crohme: handwritten mathematical equations
- ImageNet
- Flicker8k
- landlord handwritten name recognition
- [Street View Text](http://www.iapr-tc11.org/mediawiki/index.php?title=The_Street_View_Text_Dataset)
  - Text with bounding boxes from real images. Dictionary given so other words in the image can be parsed out
- [IAM handwriting](http://www.iapr-tc11.org/mediawiki/index.php?title=IAM_Online_Document_Database_(IAMonDo-database))
  - Motion of hand writing. Sample point is position, timestamp, pressure value of pen
- [NEOCR: Natural Environment OCR Dataset](http://www.iapr-tc11.org/mediawiki/index.php?title=NEOCR:_Natural_Environment_OCR_Dataset)
- [KAIST Scene Text](http://www.iapr-tc11.org/mediawiki/index.php?title=NEOCR:_Natural_Environment_OCR_Dataset)
- [MSRA Text Detection](http://www.iapr-tc11.org/mediawiki/index.php?title=MSRA_Text_Detection_500_Database_(MSRA-TD500)) with bounding boxes
- [Stanford OCR](https://ai.stanford.edu/~btaskar/ocr/) clean subset of words and images in a csv file with the pixel values
- [Chars74k](http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/) Each character is its own image. Masks for character location also provided
- [COCO](https://cocodataset.org/#download) Images with masks of objects to idenity
- [EMNIST](https://pytorch.org/vision/stable/generated/torchvision.datasets.EMNIST.html#torchvision.datasets.EMNIST) Handwritten letters (not just digits)
- EgoBody Motion of interacting people from head-mounted devices

### Audio
- ami: audio recordings of meetings
- cmudict artic voice: recordings with sentence labels
- commonvoice: speach transcriptions
- Speech commands: individual words
- timit: audio transcription with labels at the sentence, word and phenome level
- [CallHome talkbank](https://www.linguistics.ucsb.edu/research/santa-barbara-corpus#SBC009): audio transcriptions of phone calls mid conversation. utterance level labels/timing for audio

### Text
- commonsense dialogues json of conversations (4-6 turns between speakers)
- ConvoKit
  - persuasionforgood-corpus: Introduction hello, how are you?
  - tennis-corpus: Reporter jumps right into conversation. Each question/answer is a conversation and they go in order
  - iq2-corpus: Full on debate with speaker introductions
  - friends-corpus: Jumps in mid conversation
  - gap-corpus: Mid conversation talking about 15 most important items in a hypothetical plane crash. $=laughter
  - casino-corpus: Introduction hello, how are you? Campsight neighbors negotiate for food water firewood etc
- [Project Gutenberg plain text books](https://www.gutenberg.org/ebooks/2641) [Plain text](https://www.gutenberg.org/cache/epub/2641/pg2641.txt)
- [OpenWebText replication of OpenAI's WebText](https://openwebtext2.readthedocs.io/en/latest/)
  - [nanoGPT reproducting gpt-2](https://github.com/karpathy/nanoGPT#reproducing-gpt-2)

## Reference
1. WordNet - how do words relate to each other in terms of hierarchy
2. ConceptNet - how do words relate to each other in terms of usage (ex: A person can make coffee)

## Models
### Audio
- [NeMo](https://nvidia.github.io/NeMo/) ASR, NLP, TTS
- [Flowtron](https://github.com/NVIDIA/flowtron) text to melspectrogram fed into [WaveGlow](https://github.com/NVIDIA/waveglow) for waveform sythnesis
- [One TTS alignment to rule them all](https://nv-adlr.github.io/one-tts-alignment) for NeMo and Flowtron
