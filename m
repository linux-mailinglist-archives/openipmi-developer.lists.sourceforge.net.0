Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE74064B738
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Dec 2022 15:21:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1p569u-0003Oj-KB;
	Tue, 13 Dec 2022 14:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1p569a-0003OR-Ti
 for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 14:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X6lesIgjAu1xgDp+ShUjiLJxty9FzCAQ1j98A0vqJEc=; b=mrnJMm4yxcJRl02FnFkXs80pz5
 IcisOegNds9cNwqa6hYl5ESwh4M7mFR+37PHtmZsxzvRS5ZcKNpX3oEp0E9lcRUQp2YpXkybKzjo9
 6iMqmBM3ttekSGKgZG8vgiRdxsP453a7WBG3CBTtADhlJdX9MfTBH5Do1iqHqTZW6VVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X6lesIgjAu1xgDp+ShUjiLJxty9FzCAQ1j98A0vqJEc=; b=k
 AOXXldZwMEpvyeSTxi6HOsyjNKM9L+Io/JJgwGEGpFbT3OdSgWNdH6iaC+giLQVhoYfWEyvdNo5v7
 i1bdhCyEo2ObTg740bCATnsDevfXC1o88TQKdveAu4Yf9jyJ1Nkeq0n3LWKGBNJgNaruerspcSQy7
 7CrWxKeH3uBMKrFQ=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p569V-00Fp4f-RR for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 14:21:06 +0000
Received: by mail-qt1-f175.google.com with SMTP id fu10so11928503qtb.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Dec 2022 06:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X6lesIgjAu1xgDp+ShUjiLJxty9FzCAQ1j98A0vqJEc=;
 b=Dc/Pe8J2sAXrJRW+yyb2BMJkXtmUutIMlVrNxhKhnpr/yx54j5dAlYIe5VA0cHPP8X
 fqIBqDNwGmxjC9Lvv3lXJaed2hy0R+vd6CJFX8+zujidhe3cRI6/UX3TJFkzBCXDV6an
 W31PhOhrfuYMT1KnNVoeFoPhmCuwdat4P6VuZNj9R2r3aQVKDemMxApkx8w/VlsjdGyi
 o/mTjYVO8VSKfj3LRY2TtlRr1+ZNvs5dmvhHf9KLgo+9AFcAADhx1ZnrlO43LkwaBd2F
 TzakhaOzk0oJ/oToOMNeTGUaDoGiSNXt/G5DBhLOj4p+VFY16NPqsLugykVC/XPnlH/F
 Naag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=X6lesIgjAu1xgDp+ShUjiLJxty9FzCAQ1j98A0vqJEc=;
 b=sCXV+nnY3CaladwHz14QyxXRvhyq54O43t0aZjxD+2N4Fu9sDeojJGqrccU7bBrhhm
 ufbMoMWt1ZEw0nbvVxzXuzjl17h9WaDOuf/uK6kk/TsAmbeIeZujRphPSyfYRlcsrrec
 VO3sNmVHv0+npV1m1SIuCLUm/0DVbjejNfhphITJX3l6YHT/BD/YOpoLklXLQtB9R1UO
 eCmCJVTHOJBFhKsIQEEz+08+XOjvoNYq3O42zxdm06gqrRuF4ESftOmRqVTvLq6O6mkJ
 D3TMiNSPhB2zhW2BOvC2ECnksThxkaqWbdtmjzyT+7eitRD8PoCEF7J10LJbsTqnzQ2g
 oYQg==
X-Gm-Message-State: ANoB5pnydeG6KaQZe32ZCq4vwSM2F0RM7eLqzc7zAT22S0YfGSn+8U6H
 u/qPILnQXeXDIbJjAHDy2/x+/tdsNg==
X-Google-Smtp-Source: AA0mqf7zxpijmfwKu/PUl7a79qNumAvGnlnON+RbpJ4/d2prEWmqk7MZyX33zM0CxFbnZ3hQCmXgZg==
X-Received: by 2002:a05:622a:598f:b0:3a5:108b:4c0a with SMTP id
 gb15-20020a05622a598f00b003a5108b4c0amr28698353qtb.49.1670941255804; 
 Tue, 13 Dec 2022 06:20:55 -0800 (PST)
Received: from serve.minyard.net ([47.184.139.94])
 by smtp.gmail.com with ESMTPSA id
 cr27-20020a05622a429b00b003a81eef14efsm1865812qtb.45.2022.12.13.06.20.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Dec 2022 06:20:55 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:4140:42e6:4d9b:dde])
 by serve.minyard.net (Postfix) with ESMTPSA id DBF521800C0;
 Tue, 13 Dec 2022 14:20:53 +0000 (UTC)
Date: Tue, 13 Dec 2022 08:20:52 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Y5iKRKVS+o7I3OL3@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 9abf2313adc1ca1b6180c508c25f22f9395cc780:
 Linux 6.1-rc1 (2022-10-16 15:36:24 -0700) are available in the Git repository
 at: Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.175 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.175 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1p569V-00Fp4f-RR
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes and additions for 6.2
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
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA5YWJmMjMxM2FkYzFjYTFiNjE4MGM1
MDhjMjVmMjJmOTM5NWNjNzgwOgoKICBMaW51eCA2LjEtcmMxICgyMDIyLTEwLTE2IDE1OjM2OjI0
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGh0dHBz
Oi8vZ2l0aHViLmNvbS9jbWlueWFyZC9saW51eC1pcG1pLmdpdCB0YWdzL2Zvci1saW51cy02LjIt
MQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGM2ZjYxM2U1ZjM1YjBlMjE1NGQ1Y2Ex
MmYwZThlMGJlMGMxOWJlOWE6CgogIGlwbWkvd2F0Y2hkb2c6IHVzZSBzdHJzY3B5KCkgdG8gaW5z
dGVhZCBvZiBzdHJuY3B5KCkgKDIwMjItMTItMDUgMDY6NTA6MDkgLTA2MDApCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNt
YWxsIGZpeGVzLCBhIG5ldyBTU0lGIGkyYyBCTUMtc2lkZSBpbnRlcmZhY2UKClRoaXMgaW5jbHVk
ZXMgYSBudW1iZXIgb2Ygc21hbGwgZml4ZXMsIGFzIHVzdWFsLgoKSXQgYWxzbyBpbmNsdWRlcyBh
IG5ldyBkcml2ZXIgZm9yIGRvaW5nIHRoZSBpMmMgKFNTSUYpIGludGVyZmFjZQpCTUMtc2lkZSwg
cHJldHR5IG11Y2ggY29tcGxldGluZyB0aGUgQk1DIHNpZGUgaW50ZXJmYWNlcy4KCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
QW5kcmV3IEplZmZlcnkgKDEpOgogICAgICBpcG1pOiBrY3M6IFBvbGwgT0JGIGJyaWVmbHkgdG8g
cmVkdWNlIE9CRSBsYXRlbmN5CgpCbyBMaXUgKDEpOgogICAgICBpcG1pOiBGaXggc29tZSBrZXJu
ZWwtZG9jIHdhcm5pbmdzCgpDaHJpc3RvcGhlIEpBSUxMRVQgKDEpOgogICAgICBpcG1pL3dhdGNo
ZG9nOiBJbmNsdWRlIDxsaW51eC9rc3RydG94Lmg+IHdoZW4gYXBwcm9wcmlhdGUKCkNvcmV5IE1p
bnlhcmQgKDEpOgogICAgICBpcG1pOnNzaWY6IEluY3JlYXNlIHRoZSBtZXNzYWdlIHJldHJ5IHRp
bWUKCkRhbiBDYXJwZW50ZXIgKDEpOgogICAgICBpcG1pOiBmaXggdXNlIGFmdGVyIGZyZWUgaW4g
X2lwbWlfZGVzdHJveV91c2VyKCkKClF1YW4gTmd1eWVuICgzKToKICAgICAgaXBtaTogc3NpZl9i
bWM6IEFkZCBTU0lGIEJNQyBkcml2ZXIKICAgICAgYmluZGluZ3M6IGlwbWk6IEFkZCBiaW5kaW5n
IGZvciBTU0lGIEJNQyBkcml2ZXIKICAgICAgaXBtaTogc3NpZl9ibWM6IFVzZSBFUE9MTElOIGlu
c3RlYWQgb2YgUE9MTElOCgpVd2UgS2xlaW5lLUvDtm5pZyAoMSk6CiAgICAgIGlwbWk6IHNzaWZf
Ym1jOiBDb252ZXJ0IHRvIGkyYydzIC5wcm9iZV9uZXcoKQoKWmhhbmcgWXVjaGVuICgzKToKICAg
ICAgaXBtaTogZml4IGxvbmcgd2FpdCBpbiB1bmxvYWQgd2hlbiBJUE1JIGRpc2Nvbm5lY3QKICAg
ICAgaXBtaTogZml4IG1lbWxlYWsgd2hlbiB1bmxvYWQgaXBtaSBkcml2ZXIKICAgICAgaXBtaTog
Zml4IG1zZyBzdGFjayB3aGVuIElQTUkgaXMgZGlzY29ubmVjdGVkCgp5YW5nLnlhbmcyOUB6dGUu
Y29tLmNuICgxKToKICAgICAgaXBtaS93YXRjaGRvZzogdXNlIHN0cnNjcHkoKSB0byBpbnN0ZWFk
IG9mIHN0cm5jcHkoKQoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvc3NpZi1ibWMueWFt
bCAgICAgICAgIHwgIDM4ICsKIGRyaXZlcnMvY2hhci9pcG1pL0tjb25maWcgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgIDEwICsKIGRyaXZlcnMvY2hhci9pcG1pL01ha2VmaWxlICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfa2NzX3NtLmMg
ICAgICAgICAgICAgICAgICAgIHwgIDE2ICstCiBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hh
bmRsZXIuYyAgICAgICAgICAgICAgICB8ICAxNCArLQogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9z
aV9pbnRmLmMgICAgICAgICAgICAgICAgICAgfCAgMjcgKy0KIGRyaXZlcnMvY2hhci9pcG1pL2lw
bWlfc3NpZi5jICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2NoYXIvaXBt
aS9pcG1pX3dhdGNoZG9nLmMgICAgICAgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9jaGFy
L2lwbWkva2NzX2JtY19hc3BlZWQuYyAgICAgICAgICAgICAgICAgfCAgMjQgKy0KIGRyaXZlcnMv
Y2hhci9pcG1pL3NzaWZfYm1jLmMgICAgICAgICAgICAgICAgICAgICAgIHwgODczICsrKysrKysr
KysrKysrKysrKysrKwogaW5jbHVkZS91YXBpL2xpbnV4L2lwbWlfc3NpZl9ibWMuaCAgICAgICAg
ICAgICAgICAgfCAgMTggKwogMTEgZmlsZXMgY2hhbmdlZCwgMTAwNCBpbnNlcnRpb25zKCspLCAy
MyBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvaXBtaS9zc2lmLWJtYy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9jaGFyL2lwbWkvc3NpZl9ibWMuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdWFwaS9s
aW51eC9pcG1pX3NzaWZfYm1jLmgKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
