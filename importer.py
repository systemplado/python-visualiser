import sys
from pydub import AudioSegment

filename = sys.argv[1]

sound = AudioSegment.from_wav(filename)
sound = sound.set_channels(1)
sound.export(filename + '-mono', format="wav")
