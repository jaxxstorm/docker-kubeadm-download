#!/bin/bash

yumdownloader --destdir=/var/rpms kubelet-${KUBERNETES_VERSION}* kubeadm-${KUBERNETES_VERSION}* kubectl-${KUBERNETES_VERSION}*
CRI_VERSION=$(echo ${KUBERNETES_VERSION} | cut -d . -f 1,2)
yumdownloader --destdir=/var/rpms cri-tools-${CRI_VERSION}*
