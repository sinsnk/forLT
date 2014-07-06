#!/bin/bash

SIN="sinsnk"
YUI="yuinchirn"

if [ $# = 3]; then
	#add->commit->push
	git add $1
	git commit -m $2
	git push origin $3

	if [ $0 = $SIN ]; then
		echo $SIN
		git rebase -i --root
		git commit --amend --author="sinsnk <cb.so.devope@gmail.com>"
		git rebase --continue
		git push -f
	elif [ $0 = $YUI ]; then
		echo $YUI
		git rebase -i --root
		git commit --amend --author="yuinchirn <l.serah.yuinch@gmail.com>"
		git rebase --continue
		git push -f
	fi
fi