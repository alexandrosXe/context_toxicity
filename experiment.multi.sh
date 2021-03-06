#!/bin/bash
repeat=5
split="standard.622" #"standard"/"standard.622"
schema="standard" #"standard/balanced"

#nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "RNN:OOC" --repeat $repeat > RNN.ooc.log
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "RNN:INC1" --repeat $repeat > RNN.inc1.log
#nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT.ooc.log
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:INC1" --repeat $repeat > BERT.inc1.log
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:INC2" --repeat $repeat > BERT.inc2.log
# 7/12/19
# Training context-insensitive models on context-aware data
#nohup python experiments.py --with_context_data True --schema $schema --split $split --model_name "RNN:OOC" --repeat $repeat > RNN.ooc.log
#nohup python experiments.py --with_context_data True --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT.ooc.log
#8/12/19
# Repeating the BERT:OOC experiment
#nohup python experiments.py --with_context_data False --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT.ooc.log
# Repeating the BERT:INC1 experiment
#nohup python experiments.py --with_context_data True --schema $schema --split $split --model_name "BERT:INC1" --repeat $repeat > BERT.inc1.log
# 8/12/19
#nohup python experiments.py --bert_weights "bert_pretrained_100K.h5" --with_context_data False --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT.ooc.log
#nohup python experiments.py --bert_weights "bert_pretrained_100K.h5" --with_context_data True --schema $schema --split $split --model_name "BERT:INC1" --repeat $repeat > BERT.inc1.log
#nohup python experiments.py --bert_weights "bert_pretrained_wparent2_100K.h5" --with_context_data True --schema $schema --split $split --model_name "BERT:INC2" --repeat $repeat > BERT.inc2.log

# 9/12/19
# CONTEXT SENSITIVE SYSTEMS
# trained @N
#nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "RNN:INC1" --repeat $repeat > RNN@N.inc1.log
#nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "BERT:INC1" --repeat $repeat > BERT@N.inc1.log
#nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "BERT:INC2" --repeat $repeat > BERT@N.inc2.log
# trained @C
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "RNN:INC1" --repeat $repeat > RNN@C.inc1.log
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:INC1" --repeat $repeat > BERT@C.inc1.log
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:INC2" --repeat $repeat > BERT@C.inc2.log

# CONTEXT INSENSITIVE SYSTEMS
# trained @N
#nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "RNN:OOC" --repeat $repeat > RNN@N.ooc.log
#nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT@N.ooc.log
# trained @C
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "RNN:OOC" --repeat $repeat > RNN@C.ooc.log
#nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT@C.ooc.log

# 17/4/2020
# The first time you run this script uncomment the three lines below:
# git clone https://github.com/ipavlopoulos/ssig.git
# wget http://nlp.stanford.edu/data/glove.6B.zip && mkdir embeddings && mv glove* embeddings
# python experiments.py --create_random_splits 10 --with_context_data 1

# CONTEXT SENSITIVE SYSTEMS
# trained @N
nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "RNN:INC1" --repeat $repeat > RNN@N.inc1.log
nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "BERT:INC1" --repeat $repeat > BERT@N.inc1.log
nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "BERT:INC2" --repeat $repeat > BERT@N.inc2.log
# trained @C
nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "RNN:INC1" --repeat $repeat > RNN@C.inc1.log
nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:INC1" --repeat $repeat > BERT@C.inc1.log
nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:INC2" --repeat $repeat > BERT@C.inc2.log

# CONTEXT INSENSITIVE SYSTEMS
# trained @N
nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "RNN:OOC" --repeat $repeat > RNN@N.ooc.log
nohup python experiments.py --with_context_data 0 --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT@N.ooc.log
# trained @C
nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "RNN:OOC" --repeat $repeat > RNN@C.ooc.log
nohup python experiments.py --with_context_data 1 --schema $schema --split $split --model_name "BERT:OOC" --repeat $repeat > BERT@C.ooc.log
