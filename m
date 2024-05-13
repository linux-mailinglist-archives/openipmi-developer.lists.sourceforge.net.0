Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A92288C4736
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 May 2024 20:53:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1s6ani-00007F-1u;
	Mon, 13 May 2024 18:53:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1s6ang-000079-0H
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 May 2024 18:53:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NMmxtb1bP8C4W9exPsVYRtD/ZNYomRnzlZHgxlhoTfc=; b=WwkDEZ9id33k8HxKv/phnfUe0S
 u6OFifh7807vP5f/MKYHV/1EN1C60+K36btvCnHaTxfn4m/YMZECt9KgLWadwl/EKKnJ75ot2ID5G
 tmEc9s/ouJkMKI2j4yYpDCMh6giyN1jnwjyfP+OOOJ10UGa6+veyaKpb1tj0SGd60Sfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NMmxtb1bP8C4W9exPsVYRtD/ZNYomRnzlZHgxlhoTfc=; b=R
 3c9Cqs0Y0dzEhRe4BxiDYfbh8G/f87T0PogvDguUMx7FXopx0zlWnncdJTu0FYElU96w8xoa/Jtel
 JJgOFn1V0a359s5sAVCd1Bzi9ngCdwoL/LMzPLq6exdr+yqTrxsVeKRri97XAXpYAitX/u1eiKfyJ
 JE6Q6WVo1MmJhM3E=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s6ang-0002WD-Or for openipmi-developer@lists.sourceforge.net;
 Mon, 13 May 2024 18:53:29 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 46e09a7af769-6f0ecec6411so2060676a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 13 May 2024 11:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715626397; x=1716231197; darn=lists.sourceforge.net;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NMmxtb1bP8C4W9exPsVYRtD/ZNYomRnzlZHgxlhoTfc=;
 b=P+VHgB7xOhvMQ2UZqN36SAP54oxC+NYLHHaS3iG70rHD6lE/ikqDZxQjNgK2kAvWj8
 48dCwl++Q267rs/OveqxnRVT1py7AKeOf2klLFGxSUH//8ODYxjeXcOmLHqBDn45z71c
 6G5IpX2oAoIA+TfeyKNwDK08XAg0Z1fxrTyQ7oJitT3l5+NDclEQ8Oz3pblVS8VtQ4mk
 YWefPkPukdfgnAHywuWCMrtkBcCjW2xuf+aRzE4MhUu3lvcwrbQZypc1i/7Q7JLouQPk
 16Dfjuss68FRDSRs/ghUqk0kmoLvRr20iLMvaC+rS+0c0QPgUrkmEeP4GEBbB3kdzBYK
 iu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715626397; x=1716231197;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NMmxtb1bP8C4W9exPsVYRtD/ZNYomRnzlZHgxlhoTfc=;
 b=jwYqHXNszyps05sXGcwNuF4PiGH4ijfnl0PlHlYGvsv8jBh5c1XnGLCgvo6p1IQakv
 xsXlLMaudt86wveJlMAx/H1JdRpfIzVmyMgpdO6r3DbPK2ih8HKf39u2YmuL5Nmj7F5N
 okMt5W44BFh7uo6JpgFJcIBN2kmZ/ckHNYGa+ICdbl8vgfMRtsPc5wEuJr0gYE2qhby1
 hIInZK9fO+P6Bok8PAGAinYZGG8L+Qf5dr/tT9QCA/gVP7fH4z9B/F1MoMP3j5HMujKp
 I5pKMesLijHH+BhkmSK7EgJsCHg6a/Nn3uojLa6qbZ5mh7iMXWcp/OlpQjYnPJA6fEjW
 iBxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6HIaab+kx5CnyIM4H+LebSasfWLeRmWzJvm/i9pAEFcle8W3XeqxfocXpYO0h9OJXcw8/jfXJsSOW4yknEUUnCwMZpQdOpVFAD2raC10/nCDm0AfXILdn
X-Gm-Message-State: AOJu0Yy9v1LivL6E6gy02DFZdjsWb7FKfsbj+Z2nUpBi8oWcA/2gcY+q
 c6yxiiruw1RX6moDy/Te9Ns2ZHCO62KPx2U4g/MARSloDtVeaNp0ArOX
X-Google-Smtp-Source: AGHT+IHoSQQ3Es6ZLWvYCDS9qvSY1HU1WYA4NSAr36Bw///5fme+1cqpYJRi40/ZRnUdH6LUSn/O4w==
X-Received: by 2002:a9d:62da:0:b0:6f0:6b5b:11ca with SMTP id
 46e09a7af769-6f0e92d0274mr11707941a34.32.1715626397050; 
 Mon, 13 May 2024 11:53:17 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-6f0e022339dsm1671627a34.62.2024.05.13.11.53.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 May 2024 11:53:16 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:70d0:cf4:423d:2df1])
 by serve.minyard.net (Postfix) with ESMTPSA id E19061800BA;
 Mon, 13 May 2024 18:53:15 +0000 (UTC)
Date: Mon, 13 May 2024 13:53:14 -0500
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZkJhmhatRHeKuIfE@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 8d025e2092e29bfd13e56c78e22af25fac83c8ec:
 Merge tag 'erofs-for-6.9-rc2-fixes' of
 git://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs
 (2024-03-27 20:24:09 -0700) 
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.210.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1s6ang-0002WD-Or
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.10
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Corey Minyard via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZDAyNWUyMDkyZTI5YmZkMTNlNTZj
NzhlMjJhZjI1ZmFjODNjOGVjOgoKICBNZXJnZSB0YWcgJ2Vyb2ZzLWZvci02LjktcmMyLWZpeGVz
JyBvZiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQveGlhbmcv
ZXJvZnMgKDIwMjQtMDMtMjcgMjA6MjQ6MDkgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBH
aXQgcmVwb3NpdG9yeSBhdDoKCiAgaHR0cHM6Ly9naXRodWIuY29tL2NtaW55YXJkL2xpbnV4LWlw
bWkuZ2l0IHRhZ3MvZm9yLWxpbnVzLTYuMTAtMQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVw
IHRvIDk5OWRmZjNjMTM5MzBhZDc3YTcwNzBhNWZiNDQ3M2IxZmFmZGNlY2M6CgogIGlwbWk6IGtj
c19ibWNfbnBjbTd4eDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJu
aW5nIHZvaWQgKDIwMjQtMDQtMTcgMTQ6NTU6MDQgLTA1MDApCgotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmlwbWk6IE1vc3Rs
eSB1cGRhdGVzIGZvciBkZXByZWNhdGVkIGludGVyZmFjZXMKClRoZXNlIGNoYW5nZXMgYXJlIG1v
c3RseSB1cGRhdGVzIGZvciBkZXByZWNhdGVkIGludGVyZmFjZXMsCnBsYXRmb3JtLnJlbW92ZSBh
bmQgY29udmVydGluZyBmcm9tIGEgdGFza2xldCB0byBhIEJIIHdvcmtxdWV1ZS4gIEFsc28KdXNl
IEhBU19JT1BPUlQgZm9yIGRpc2FibGluZyBpbmIoKS9vdXRiKCkuCgotY29yZXkKCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
QWxsZW4gUGFpcyAoMSk6CiAgICAgIGlwbWk6IENvbnZlcnQgZnJvbSB0YXNrbGV0IHRvIEJIIHdv
cmtxdWV1ZQoKTmlrbGFzIFNjaG5lbGxlICgxKToKICAgICAgY2hhcjogaXBtaTogaGFuZGxlIEhB
U19JT1BPUlQgZGVwZW5kZW5jaWVzCgpVd2UgS2xlaW5lLUvDtm5pZyAoNik6CiAgICAgIGlwbWk6
IGJ0LWJtYzogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZv
aWQKICAgICAgaXBtaTogaXBtaV9wb3dlcm52OiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBj
YWxsYmFjayByZXR1cm5pbmcgdm9pZAogICAgICBpcG1pOiBpcG1pX3NpX3BsYXRmb3JtOiBDb252
ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogICAgICBpcG1p
OiBpcG1pX3NzaWY6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmlu
ZyB2b2lkCiAgICAgIGlwbWk6IGtjc19ibWNfYXNwZWVkOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJl
bW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogICAgICBpcG1pOiBrY3NfYm1jX25wY203eHg6
IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCgogZHJp
dmVycy9jaGFyL2lwbWkvTWFrZWZpbGUgICAgICAgICAgIHwgMTEgKysrKy0tLS0tLS0KIGRyaXZl
cnMvY2hhci9pcG1pL2J0LWJtYy5jICAgICAgICAgICB8ICA1ICsrLS0tCiBkcml2ZXJzL2NoYXIv
aXBtaS9pcG1pX21zZ2hhbmRsZXIuYyAgfCAyOSArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LQogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9wb3dlcm52LmMgICAgIHwgIDYgKystLS0tCiBkcml2
ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2ludGYuYyAgICAgfCAgMyArKy0KIGRyaXZlcnMvY2hhci9p
cG1pL2lwbWlfc2lfcGNpLmMgICAgICB8ICAzICsrKwogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9z
aV9wbGF0Zm9ybS5jIHwgIDYgKystLS0tCiBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyAg
ICAgICAgfCAgNSArKy0tLQogZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYyAgIHwg
IDYgKystLS0tCiBkcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX25wY203eHguYyAgfCAgNiArKy0t
LS0KIDEwIGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDQ1IGRlbGV0aW9ucygtKQoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==
