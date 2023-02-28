Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D446A5D38
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Feb 2023 17:37:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pX2yP-00052T-4r;
	Tue, 28 Feb 2023 16:37:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pX2yN-00052M-8D
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 16:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NsbCrVNj9Os7pntGMdeXbzTP2r11rwpbNCIUNxCjx6g=; b=cObXUM6pAcoCJLzIWQnRzIKgQx
 TI4DmxjVmVzVV6afTTATURUgHh4id0lJ5Ezi9RG54EcLRSDElprQJh3n7Z1yhwIC/oz72YHxzFHtL
 jBHybel5xgJAoDrv4RuYZ0ifMsnLn2u2cbpPqmsqvT611QJXo+yQWUbXbrIU5eKIUySA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NsbCrVNj9Os7pntGMdeXbzTP2r11rwpbNCIUNxCjx6g=; b=MC6lBflqakYw9aG/peCDfE8duw
 RKgqLtGMEJN4k+OmyDJd/CmqfAL86CF+pBDhOHSwuw0Xic9+UC9hrHH/5TWq5csrS55bn+FYcm0rJ
 U7oRmyBFuFs0DMxGSO4TjxEKGQEtlZC1uIHGdDb3EFE1c3LlrED6W02eSSKn7QVZRDbY=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pX2yK-007cy4-PI for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 16:37:02 +0000
Received: by mail-qv1-f45.google.com with SMTP id bo10so7243388qvb.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Feb 2023 08:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=NsbCrVNj9Os7pntGMdeXbzTP2r11rwpbNCIUNxCjx6g=;
 b=q231vxUuY/sezzOG+pQ7x17Al+JTytiolRJ5x9wPq2WqmmV+imnyY95BJaOkIRmfoZ
 XmEmhOPs/tMIh8DiVTpUPQGyqjzoFNb/7okw3OeD36vzOdWPUsTx2Tn0nmHVm1nfyAYa
 aaUrsagtAMLcv4Tg1SWP7kOIVGxwy7A9yPvXJcUDHWiEp5NsBsp5QSzUmm4m+zqYNE9o
 zjv26Dk/nFK4TT7qEl+OtZX5ezaait4Wdj0ehzQSpePfCT0j6yeRWESka2GCDQF2uVsH
 WfJ5/ZJrm8tvLAeGOX9rj6Y6RfqpqQ64LaS9WLXBwE42SUyeMWJJexNboelS0uWeArri
 TZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NsbCrVNj9Os7pntGMdeXbzTP2r11rwpbNCIUNxCjx6g=;
 b=Sve1WhFzQZXAsqpUwnsXJsaMEW4npxeXPpacmmfP20veQAHAY7OMcVarjYa99kJfIL
 v6MRoJNN9Q3JAfGBKM4ohbQf8k/FV5UwD4n9pC8SV8ZcKEBZyo3AmdAuBq4QvrpuCu6Q
 MKYLeeALKVvQDp/D1Zi3myoazL+x9HCS/LsiqXCWj1kgrtzqFvh3gvn9FsA0DdRkdCQU
 nPH0Hehv/DQmtXOeYsOWYsjQ2amp6S7e4ggeBBm8eze3H04MiWTcvM/24zhJiQQGiAmh
 8njYDo+dnm3GNmDGQLSoXZntQhDDboJYz/WMWhQBP5smjNVLlMLTdZFicWEDFa6GZxBi
 SKIw==
X-Gm-Message-State: AO0yUKXvZVhFxU4OxMqK0q1fflqUrxX0iLDZeazzEo42TZ0MjrJanZbO
 P7z3fpg+zJsbjw2C9cQtrirAuTQYIA==
X-Google-Smtp-Source: AK7set9gy80bm7BASFAbnOUN011XGfwWjVdGlxDzxHN9m1ff0GvBXAZOV7l8MaCj00Ki8OJ4ZRR9DQ==
X-Received: by 2002:ad4:5de1:0:b0:56e:9c11:651e with SMTP id
 jn1-20020ad45de1000000b0056e9c11651emr6610905qvb.27.1677602214690; 
 Tue, 28 Feb 2023 08:36:54 -0800 (PST)
Received: from serve.minyard.net ([47.184.176.248])
 by smtp.gmail.com with ESMTPSA id
 t3-20020a05620a034300b006fa16fe93bbsm7079985qkm.15.2023.02.28.08.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Feb 2023 08:36:54 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8584:8d72:eb3d:d4f5])
 by serve.minyard.net (Postfix) with ESMTPSA id 47C8A1800BD;
 Tue, 28 Feb 2023 16:36:53 +0000 (UTC)
Date: Tue, 28 Feb 2023 10:36:52 -0600
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <Y/4tpHxe0irCRxjK@minyard.net>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Feb 28, 2023 at 02:53:12PM +0100, Christian Theune
    via Openipmi-developer wrote: > Hi, > > I’ve been trying to debug the PANIC
    and OEM string handling and am running out of ideas whether thi [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.219.45 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.219.45 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1pX2yK-007cy4-PI
Subject: Re: [Openipmi-developer] PANIC / OEM strings missing,
 not sure whether misconfiguration or a bug
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMDI6NTM6MTJQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+IEhpLAo+IAo+IEnigJl2ZSBiZWVuIHRy
eWluZyB0byBkZWJ1ZyB0aGUgUEFOSUMgYW5kIE9FTSBzdHJpbmcgaGFuZGxpbmcgYW5kIGFtIHJ1
bm5pbmcgb3V0IG9mIGlkZWFzIHdoZXRoZXIgdGhpcyBpcyBhIGJ1ZyBvciB3aGV0aGVyIHNvbWV0
aGluZyBzbyBzdWJ0bGUgaGFzIGNoYW5nZWQgaW4gbXkgY29uZmlnIHRoYXQgSeKAmW0ganVzdCBu
b3Qgc2VlaW5nIGl0Lgo+IAo+IChOb3RlOiBJ4oCZbSB3aWxsaW5nIHRvIHBheSBmb3IgY29uc3Vs
dGluZy4pCgpQcm9iYWJseSBub3QgbmVjZXNzYXJ5LgoKPiAKPiBJIGhhdmUgbWFjaGluZXMgdGhh
dCB3ZeKAmXZlIG1vdmVkIGZyb20gYW4gb2xkZXIgc2V0dXAgKEdlbnRvbywgKG1vc3RseSkgdmFu
aWxsYSBrZXJuZWwgNC4xOS4xNTcpIHRvIGEgbmV3ZXIgc2V0dXAgKE5peE9TLCAobW9zdGx5KSB2
YW5pbGxhIGtlcm5lbCA1LjEwLjE1OSkgYW5kIEnigJltIG5vdyBleHBlcmllbmNpbmcgY3Jhc2hl
cyB0aGF0IHNlZW0gdG8gYmUga2VybmVsIHBhbmljcyBidXQgZG8gbm90IGdldCB0aGUgdXN1YWwg
bWVzc2FnZXMgaW4gdGhlIElQTUkgU0VMLgoKSSBqdXN0IHRlc3RlZCBvbiBzdG9jayA1LjEwLjE1
OSBhbmQgaXQgd29ya2VkIHdpdGhvdXQgaXNzdWUuICBFdmVyeXRoaW5nCnlvdSBoYXZlIGJlbG93
IGxvb2tzIG9rLgoKQ2FuIHlvdSB0ZXN0IGJ5IGNhdXNpbmcgYSBjcmFzaCB3aXRoOgoKICBlY2hv
IGMgPi9wcm9jL3N5c3JxLXRyaWdnZXIKCmFuZCBzZWUgaWYgaXQgd29ya3M/CgpJdCBzb3VuZHMg
bGlrZSB5b3UgYXJlIGhhdmluZyBzb21lIHR5cGUgb2YgY3Jhc2ggdGhhdCB5b3Ugd291bGQgbm9y
bWFsbHkKdXNlIHRoZSBJUE1JIGxvZ3MgdG8gZGVidWcuICBIb3dldmVyLCB0aGV5IGFyZW4ndCBw
ZXJmZWN0LCB0aGUgc3lzdGVtCmhhcyB0byBzdGF5IHVwIGxvbmcgZW5vdWdoIHRvIGdldCB0aGVt
IGludG8gdGhlIGV2ZW50IGxvZy4KCkluIHRoaXMgc2l0dWF0aW9uLCBnZXR0aW5nIGEgc2VyaWFs
IGNvbnNvbGUgKHByb2JhYmx5IHRocm91Z2ggSVBNSQpTZXJpYWwgb3ZlciBMQU4pIGFuZCBnZXR0
aW5nIHRoZSBjb25zb2xlIG91dHB1dCBvbiBhIGNyYXNoIGlzIHByb2JhYmx5CnlvdXIgYmVzdCBv
cHRpb24uICBZb3UgY2FuIHVzZSBpcG1pdG9vbCBmb3IgdGhpcywgb3IgSSBoYXZlIGEgbGlicmFy
eQp0aGF0IGlzIGFibGUgdG8gbWFrZSBjb25uZWN0aW9ucyB0byBzZXJpYWwgcG9ydHMsIGluY2x1
ZGluZyB0aHJvdWdoIElQTUkKU29MLgoKLWNvcmV5Cgo+IAo+IFRoZSBrZXJuZWwgZG9lcyBpbmNs
dWRlIHRoZSBuZWNlc3NhcnkgZHJpdmVycywgdGhlIHdhdGNoZG9nIGlzIGFjdGl2ZSBhbmQgdGhl
IFNFTCBzaG93cyB0aGUgd2F0Y2hkb2cgYWN0aW9uLiBJIGhhdmUgcmVhc29uIHRvIHRoaW5rIHRo
YXQgaXTigJlzIGEgcGFuaWMgYmVjYXVzZSB0aGUgdHlwaWNhbCBiZWhhdmlvdXIgb2YgdGhlIHRp
bWVvdXQganVtcGluZyB0byAyNTUgaGFwcGVucy4KPiAKPiBIZXJl4oCZcyB0aGUgSVBNSS1yZWxh
dGVkIGNvbmZpZyBhbmQgY21kbGluZSBmcm9tIHRoZSBvbGQga2VybmVsIHdoZXJlIGl0IHdvcmtz
Ogo+IAo+IEJPT1RfSU1BR0U9L2tlcm5lbC1nZW5rZXJuZWwteDg2XzY0LTQuMTkuMTU3IHJvb3Q9
L2Rldi92Z3N5cy9yb290IHJvIHJvb3Rmc3R5cGU9ZXh0NCBkb2x2bSBpcG1pX3dhdGNoZG9nLnRp
bWVvdXQ9NjAgaWdiLkludGVycnVwdFRocm90dGxlUmF0ZT0xIGl4Z2JlLkludGVycnVwdFRocm90
dGxlUmF0ZT0xIGNvbnNvbGU9dHR5UzIsNTc2MDAKPiAKPiAjIENPTkZJR19BQ1BJX0lQTUkgaXMg
bm90IHNldAo+IENPTkZJR19JUE1JX0hBTkRMRVI9eQo+IENPTkZJR19JUE1JX0RNSV9ERUNPREU9
eQo+IENPTkZJR19JUE1JX1BBTklDX0VWRU5UPXkKPiBDT05GSUdfSVBNSV9QQU5JQ19TVFJJTkc9
eQo+IENPTkZJR19JUE1JX0RFVklDRV9JTlRFUkZBQ0U9eQo+IENPTkZJR19JUE1JX1NJPXkKPiAj
IENPTkZJR19JUE1JX1NTSUYgaXMgbm90IHNldAo+IENPTkZJR19JUE1JX1dBVENIRE9HPXkKPiBD
T05GSUdfSVBNSV9QT1dFUk9GRj15Cj4gCj4gT24gdGhhdCBzeXN0ZW0gKGFzIGV2ZXJ5dGhpbmcg
aXMgc3RhdGljYWxseSBjb21waWxlZCkgdGhlIGxzbW9kIGlzIGVtcHR5IFdSVCBpcG1pIGFuZCB0
aGUga2VybmVsIGxvZyBzaG93czoKPiAKPiBbICAgIDQuMzc0NzU3XSBpcG1pIGRldmljZSBpbnRl
cmZhY2UKPiBbICAgIDQuMzg5Mzg4XSBpcG1pX3NpIGRtaS1pcG1pLXNpLjA6IGlwbWlfcGxhdGZv
cm06IHByb2JpbmcgdmlhIFNNQklPUwo+IFsgICAgNC40MDIwODddIGlwbWlfc2k6IFNNQklPUzog
aW8gMHhjYTIgcmVnc2l6ZSAxIHNwYWNpbmcgMSBpcnEgMAo+IFsgICAgNC40MTM5MDddIGlwbWlf
c2k6IEFkZGluZyBTTUJJT1Mtc3BlY2lmaWVkIGtjcyBzdGF0ZSBtYWNoaW5lCj4gWyAgICA0LjQy
NTU3MF0gaXBtaV9zaSBJUEkwMDAxOjAwOiBpcG1pX3BsYXRmb3JtOiBwcm9iaW5nIHZpYSBBQ1BJ
Cj4gWyAgICA0LjQzNzQwOF0gaXBtaV9zaSBJUEkwMDAxOjAwOiBbaW8gIDB4MGNhMl0gcmVnc2l6
ZSAxIHNwYWNpbmcgMSBpcnEgMAo+IFsgICAgNC40NTA0NDldIGlwbWlfc2kgZG1pLWlwbWktc2ku
MDogUmVtb3ZpbmcgU01CSU9TLXNwZWNpZmllZCBrY3Mgc3RhdGUgbWFjaGluZSBpbiBmYXZvciBv
ZiBBQ1BJCj4gWyAgICA0LjQ2NzgxOF0gaXBtaV9zaTogQWRkaW5nIEFDUEktc3BlY2lmaWVkIGtj
cyBzdGF0ZSBtYWNoaW5lCj4gWyAgICA0LjQ3OTEzOV0gaXBtaV9zaTogVHJ5aW5nIEFDUEktc3Bl
Y2lmaWVkIGtjcyBzdGF0ZSBtYWNoaW5lIGF0IGkvbyBhZGRyZXNzIDB4Y2EyLCBzbGF2ZSBhZGRy
ZXNzIDB4MCwgaXJxIDAKPiBbICAgIDQuNTY3NjEzXSBpcG1pX3NpIElQSTAwMDE6MDA6IFRoZSBC
TUMgZG9lcyBub3Qgc3VwcG9ydCBjbGVhcmluZyB0aGUgcmVjdiBpcnEgYml0LCBjb21wZW5zYXRp
bmcsIGJ1dCB0aGUgQk1DIG5lZWRzIHRvIGJlIGZpeGVkLgo+IFsgICAgNC42MTc2OTNdIGlwbWlf
c2kgSVBJMDAwMTowMDogRm91bmQgbmV3IEJNQyAobWFuX2lkOiAweDAwMmE3YywgcHJvZF9pZDog
MHgwNjI0LCBkZXZfaWQ6IDB4MjApCj4gWyAgICA0LjY3MTg3MV0gaXBtaV9zaSBJUEkwMDAxOjAw
OiBJUE1JIGtjcyBpbnRlcmZhY2UgaW5pdGlhbGl6ZWQKPiAKPiBBbmQgaGVyZeKAmXMgdGhlIGNv
bnRyb2xsZXIgaW5mbzoKPiAKPiBEZXZpY2UgSUQgICAgICAgICAgICAgICAgIDogMzIKPiBEZXZp
Y2UgUmV2aXNpb24gICAgICAgICAgIDogMQo+IEZpcm13YXJlIFJldmlzaW9uICAgICAgICAgOiAy
LjI0Cj4gSVBNSSBWZXJzaW9uICAgICAgICAgICAgICA6IDIuMAo+IE1hbnVmYWN0dXJlciBJRCAg
ICAgICAgICAgOiAxMDg3Ngo+IE1hbnVmYWN0dXJlciBOYW1lICAgICAgICAgOiBTdXBlcm1pY3Jv
Cj4gUHJvZHVjdCBJRCAgICAgICAgICAgICAgICA6IDE1NzIgKDB4MDYyNCkKPiBQcm9kdWN0IE5h
bWUgICAgICAgICAgICAgIDogVW5rbm93biAoMHg2MjQpCj4gRGV2aWNlIEF2YWlsYWJsZSAgICAg
ICAgICA6IHllcwo+IFByb3ZpZGVzIERldmljZSBTRFJzICAgICAgOiBubwo+IEFkZGl0aW9uYWwg
RGV2aWNlIFN1cHBvcnQgOgo+ICAgICBTZW5zb3IgRGV2aWNlCj4gICAgIFNEUiBSZXBvc2l0b3J5
IERldmljZQo+ICAgICBTRUwgRGV2aWNlCj4gICAgIEZSVSBJbnZlbnRvcnkgRGV2aWNlCj4gICAg
IElQTUIgRXZlbnQgUmVjZWl2ZXIKPiAgICAgSVBNQiBFdmVudCBHZW5lcmF0b3IKPiAgICAgQ2hh
c3NpcyBEZXZpY2UKPiBBdXggRmlybXdhcmUgUmV2IEluZm8gICAgIDoKPiAgICAgMHgwNgo+ICAg
ICAweDAwCj4gICAgIDB4MDAKPiAgICAgMHgwMAo+IAo+IEFuZCBoZXJl4oCZcyB0aGUgTml4T1Mg
ZW52aXJvbm1lbnQgd2hlcmUgaXQgZG9lc27igJl0IHdvcms6Cj4gCj4gQk9PVF9JTUFHRT0va2Vy
bmVscy9xeTQyamhpY3Z2cWIwcDd4MmgwaTQ2YjJ4MGYxdzc0cS1saW51eC01LjEwLjE1OS1ieklt
YWdlIGluaXQ9L25peC9zdG9yZS9xeDMzbnlyMGY2MHk3Nnl6bWJnc2lreHI2MGxxemRiMy1uaXhv
cy1zeXN0ZW0tLi4uLTIxLjA1cHJlLWdpdC9pbml0IGRvbHZtIGlwbWlfd2F0Y2hkb2cudGltZW91
dD02MCBpZ2IuSW50ZXJydXB0VGhyb3R0bGVSYXRlPTEgaXhnYmUuSW50ZXJydXB0VGhyb3R0bGVS
YXRlPTEgcGFuaWM9MSBib290LnBhbmljX29uX2ZhaWwgc3lzdGVtZC5qb3VybmFsZC5mb3J3YXJk
X3RvX2NvbnNvbGU9bm8gc3lzdGVtZC5sb2dfdGFyZ2V0PWttc2cgY29uc29sZT10dHlTMSwxMTUy
MDAgbG9nbGV2ZWw9Nwo+IAo+IENPTkZJR19BQ1BJX0lQTUk9bQo+IENPTkZJR19JUE1JX0hBTkRM
RVI9bQo+IENPTkZJR19JUE1JX0RNSV9ERUNPREU9eQo+IENPTkZJR19JUE1JX1BMQVRfREFUQT15
Cj4gQ09ORklHX0lQTUlfUEFOSUNfRVZFTlQ9eQo+IENPTkZJR19JUE1JX1BBTklDX1NUUklORz15
Cj4gQ09ORklHX0lQTUlfREVWSUNFX0lOVEVSRkFDRT1tCj4gQ09ORklHX0lQTUlfU0k9bQo+IENP
TkZJR19JUE1JX1NTSUY9bQo+IENPTkZJR19JUE1JX1dBVENIRE9HPW0KPiBDT05GSUdfSVBNSV9Q
T1dFUk9GRj1tCj4gCj4gT24gdGhlIG5ld2VyIHN5c3RlbSB0aGlzIGlzIHdoYXQgYXBwZWFycyBp
biB0aGUga2VybmVsIGxvZzoKPiAKPiBbICAgMjIuMDcwOTM1XSBpcG1pIGRldmljZSBpbnRlcmZh
Y2UKPiBbICAgMjIuMDg2MzUzXSBzeXN0ZW1kLW1vZHVsZXMtbG9hZFs1NzJdOiBJbnNlcnRlZCBt
b2R1bGUgJ2lwbWlfd2F0Y2hkb2cnCj4gWyAgIDIyLjkwNDcxN10gaXBtaV9zaTogSVBNSSBTeXN0
ZW0gSW50ZXJmYWNlIGRyaXZlcgo+IFsgICAyMi45MTEwMjJdIGlwbWlfc2kgZG1pLWlwbWktc2ku
MDogaXBtaV9wbGF0Zm9ybTogcHJvYmluZyB2aWEgU01CSU9TCj4gWyAgIDIyLjkxNzM5M10gaXBt
aV9wbGF0Zm9ybTogaXBtaV9zaTogU01CSU9TOiBpbyAweGNhOCByZWdzaXplIDEgc3BhY2luZyA0
IGlycSAwCj4gWyAgIDIyLjkyNTA5Ml0gaXBtaV9zaTogQWRkaW5nIFNNQklPUy1zcGVjaWZpZWQg
a2NzIHN0YXRlIG1hY2hpbmUKPiBbICAgMjIuOTMxMDIzXSBpcG1pX3NpOiBUcnlpbmcgU01CSU9T
LXNwZWNpZmllZCBrY3Mgc3RhdGUgbWFjaGluZSBhdCBpL28gYWRkcmVzcyAweGNhOCwgc2xhdmUg
YWRkcmVzcyAweDIwLCBpcnEgMAo+IFsgICAyMy4xMTk4OTJdIGlwbWlfc2kgZG1pLWlwbWktc2ku
MDogSVBNSSBtZXNzYWdlIGhhbmRsZXI6IEZvdW5kIG5ldyBCTUMgKG1hbl9pZDogMHgwMDAyYTIs
IHByb2RfaWQ6IDB4MDEwMCwgZGV2X2lkOiAweDIwKQo+IFsgICAyMy40Mzg0NjldIGlwbWlfc2kg
ZG1pLWlwbWktc2kuMDogSVBNSSBrY3MgaW50ZXJmYWNlIGluaXRpYWxpemVkCj4gWyAgIDIzLjQ0
MTYzMF0gaXBtaV9zc2lmOiBJUE1JIFNTSUYgSW50ZXJmYWNlIGRyaXZlcgo+IAo+IEFuZCB0aGUg
aXBtaS1yZWxhdGVkIG1vZHVsZXMgbG9vayBsaWtlIHRoaXM6Cj4gCj4gaXBtaV9zc2lmICAgICAg
ICAgICAgICA0MDk2MCAgMAo+IGlwbWlfc2kgICAgICAgICAgICAgICAgNzM3MjggIDEKPiBpcG1p
X3dhdGNoZG9nICAgICAgICAgIDMyNzY4ICAxCj4gaXBtaV9kZXZpbnRmICAgICAgICAgICAyMDQ4
MCAgMAo+IGlwbWlfbXNnaGFuZGxlciAgICAgICAgNzM3MjggIDQgaXBtaV9kZXZpbnRmLGlwbWlf
c2ksaXBtaV93YXRjaGRvZyxpcG1pX3NzaWYKPiBpMmNfY29yZSAgICAgICAgICAgICAgMTAyNDAw
ICA1IGRybV9rbXNfaGVscGVyLGkyY19hbGdvX2JpdCxtZ2FnMjAwLGlwbWlfc3NpZixkcm0KPiAK
PiBJbiB0aGlzIGNhc2UgaXTigJlzIGEgREVMTCBJUE1JIGNvbnRyb2xsZXI6Cj4gCj4gRGV2aWNl
IElEICAgICAgICAgICAgICAgICA6IDMyCj4gRGV2aWNlIFJldmlzaW9uICAgICAgICAgICA6IDAK
PiBGaXJtd2FyZSBSZXZpc2lvbiAgICAgICAgIDogMS41Mgo+IElQTUkgVmVyc2lvbiAgICAgICAg
ICAgICAgOiAyLjAKPiBNYW51ZmFjdHVyZXIgSUQgICAgICAgICAgIDogNjc0Cj4gTWFudWZhY3R1
cmVyIE5hbWUgICAgICAgICA6IERFTEwgSW5jCj4gUHJvZHVjdCBJRCAgICAgICAgICAgICAgICA6
IDI1NiAoMHgwMTAwKQo+IFByb2R1Y3QgTmFtZSAgICAgICAgICAgICAgOiBVbmtub3duICgweDEw
MCkKPiBEZXZpY2UgQXZhaWxhYmxlICAgICAgICAgIDogeWVzCj4gUHJvdmlkZXMgRGV2aWNlIFNE
UnMgICAgICA6IHllcwo+IEFkZGl0aW9uYWwgRGV2aWNlIFN1cHBvcnQgOgo+ICAgICBTZW5zb3Ig
RGV2aWNlCj4gICAgIFNEUiBSZXBvc2l0b3J5IERldmljZQo+ICAgICBTRUwgRGV2aWNlCj4gICAg
IEZSVSBJbnZlbnRvcnkgRGV2aWNlCj4gICAgIElQTUIgRXZlbnQgUmVjZWl2ZXIKPiAgICAgQnJp
ZGdlCj4gICAgIENoYXNzaXMgRGV2aWNlCj4gQXV4IEZpcm13YXJlIFJldiBJbmZvICAgICA6Cj4g
ICAgIDB4MDAKPiAgICAgMHgwYQo+ICAgICAweDAwCj4gICAgIDB4MDAKPiAKPiBCdXQgdGhlIGJl
aGF2aW91ciBoYXMgYmVlbiB0aGUgc2FtZSBvbiB2YXJpb3VzIFN1cGVyTWljcm8gbWFjaGluZXMu
Cj4gCj4gU28sIGFmdGVyIHJ1bm5pbmcgb3V0IG9mIGlkZWFzIHdoYXQgdG8gbG9vayBmb3IsIEni
gJltIGxlZnQgd2l0aCB0aG9zZSBxdWVzdGlvbnM6Cj4gCj4gMS4gd2hlbiBJIHRyaWdnZXIgYSBw
YW5pYyBtYW51YWxseSB2aWEg4oCcZWNobyBjID4gL3Byb2Mvc3lzcnEtdHJpZ2dlcuKAnSAtIHRo
YXQgc2hvdWxkIGFsc28gY3JlYXRlIGEgcGFuaWMgbWVzc2FnZSB0aGF0IGFwcGVhcnMgaW4gdGhl
IFNFTCwgcmlnaHQ/Cj4gCj4gMi4gSXMgdGhlcmUgYW55dGhpbmcgdGhhdCBjb21lcyB0byBtaW5k
IHRoYXQgSSBjb3VsZCBoYXZlIGNvbmZpZ3VyZWQgaW5jb3JyZWN0bHkgaW4gdGhlIGtlcm5lbD8K
PiAKPiAzLiBPciBpcyB0aGVyZSBhbnl0aGluZyBJIGNhbiBpbnNwZWN0IGFmdGVyIGJvb3QgdG8g
a25vdyB3aGljaCBzZXR0aW5nIHRoZSDigJxwYW5pY19vcOKAnSBoYXM/IAo+IAo+IEkgaGF2ZSBy
dW5uaW5nIHN5c3RlbXMgd2l0aCBib3RoIHRoZSBvbGQgYW5kIG5ldyBzZXR1cHMgYXZhaWxhYmxl
IHRoYXQgSSBjYW4gZnJlZWx5IHBva2UgdG8gYW5hbHl6ZSBpdCBpbnRlcmFjdGl2ZWx5Lgo+IAo+
IEFueSBoZWxwIGlzIGFwcHJlY2lhdGVkIGFzIEnigJl2ZSBydW4gb3V0IG9mIGlkZWFzIGFuZCAo
anVzdCB0byBtYWtlIHN1cmUpIEnigJltIGhhcHB5IHRvIHBheSBwcm9wZXIgY29uc3VsdGluZyBy
YXRlcyAoZXNwZWNpYWxseSBoYXBweSB0byBzdXBwb3J0IG9wZW4gc291cmNlIHdvcmspLgo+IAo+
IExpZWJlIEdyw7zDn2UsCj4gQ2hyaXN0aWFuIFRoZXVuZQo+IAo+IC0tIAo+IENocmlzdGlhbiBU
aGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKPiBGbHlpbmcg
Q2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5p
bwo+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChTYWFsZSkgwrcgRGV1dHNj
aGxhbmQKPiBIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0
aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKPiAKPiAKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IE9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKPiBPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4g
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
