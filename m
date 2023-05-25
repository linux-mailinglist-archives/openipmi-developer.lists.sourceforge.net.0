Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53311711AE8
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 May 2023 01:53:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1q2Klr-0000W5-3s;
	Thu, 25 May 2023 23:53:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1q2Klo-0000Vt-Tq
 for openipmi-developer@lists.sourceforge.net;
 Thu, 25 May 2023 23:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JrRcn0TyyWHJUDmkmknEHbp8H5IQ0HRjZqWjk3Km0xs=; b=WZvBT3GKSb/Rso4C9Gg0h1FU+a
 41qKahW27d8lNeqeLLcoGLJwPUqXV7Go1NPekikL4CHvfBwnUhnIOKhyhjTBu9xMfsYJHWenD64DO
 8/HKtSu0cUAbRUFovOoUpPzfnlo3407/lkuTkddebsL/me7gfUgpRgfyjAtF2cKKB1gI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JrRcn0TyyWHJUDmkmknEHbp8H5IQ0HRjZqWjk3Km0xs=; b=a46OaC4HuDWh6XPhWeUbfo+yjB
 Wyi0BVcYQw/VqBvR08XVdDg0b0UMqMdEzxa8zMps7/BWb5Cl3pcLnqT1nb2QkDP1+QX8EBK1KTVQ+
 UYw8ZfkHqn6GbH2nDE1kCd4s1SHzpTqZmLLUJvUD8qNT/DEE7nRObWkDNpCk0C3idwSM=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q2Kll-0005mP-HM for openipmi-developer@lists.sourceforge.net;
 Thu, 25 May 2023 23:53:24 +0000
Received: by mail-qv1-f45.google.com with SMTP id
 6a1803df08f44-6237faa8677so2691506d6.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 May 2023 16:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685058795; x=1687650795;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=JrRcn0TyyWHJUDmkmknEHbp8H5IQ0HRjZqWjk3Km0xs=;
 b=d9TDgBm597k8gMFriOWjUHNLwCNtWvDELUdjg/CYM089QbgMyOLWo3tSADmdsREnMn
 Si5ifuktNMopbfzFSxGJqKBbQ9HxP0m40fBw4trrUOl1qkKhzE+GoZge5ZY5p1RkLp/P
 NYUensXgSvHhf42ypzoa/pJ3AG85gX7/BbUPSQ94x7Sri/5RFgxGSPZ9r4b2T51NkOKM
 aaAFXf9NMVrx4y/QB6JneZ0ojiEi0OlJEXvnDubOlVZ+zw0VhM2HvEGD4mLPuVICKBA9
 JHBPk2wIrspoQX86YBTx7XQj6H2YMLBD0zA2g3JcgkeArmYg04d5H9tKnMw8XMgapvIc
 RWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685058795; x=1687650795;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JrRcn0TyyWHJUDmkmknEHbp8H5IQ0HRjZqWjk3Km0xs=;
 b=ZIWT7LoovVSMxfRj0tAFuSxMQwXYdLsoX6/c/QDHDHes2L9L+CUoCRFRrUR6tuC7AQ
 PJmpWBtzRiid81nQ3pCqX2C1uaXvICbaLXU+66+A2bwHXhCaHTrn4gYYQwoMKmREM00Y
 POn+ze28cPmYh88FFGBqEWBPvRb7QGL7gayun+HgLMUmAWnxsfpR6NTKDfU3c4by5OJ4
 1v4uE67K1gyX2+L6n1dHdtYpnpH3M7+W/fkIA8H/PE+SkiSPnfJUyBI6kqiCAYIJ6lm0
 ZqvZFOALEUPSEvrooTfX652U6Cak6YSpRBVzlI9q9KSQlcqZX68SdDnr+61izvIrkxQi
 sDXg==
X-Gm-Message-State: AC+VfDwfBhdC54TS8ig7WK1c4rlm47iMCKDtm4i5PQ3KIXITznAvDgmn
 bGTKkHQYLJAs8/Xcme5yMSkc2q5A/g==
X-Google-Smtp-Source: ACHHUZ4euHV5+O4iY5IB9uElYOq+viIcVHE84TGptW9rvM7PWfR39xJr/iYtapXB2udWtzYkdO5ayA==
X-Received: by 2002:a05:6214:21e9:b0:625:aa48:defd with SMTP id
 p9-20020a05621421e900b00625aa48defdmr208750qvj.61.1685058795272; 
 Thu, 25 May 2023 16:53:15 -0700 (PDT)
Received: from serve.minyard.net ([47.189.94.26])
 by smtp.gmail.com with ESMTPSA id
 mm13-20020a0562145e8d00b006238c3a9148sm768109qvb.102.2023.05.25.16.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 May 2023 16:53:14 -0700 (PDT)
Received: from mail.minyard.net (unknown [IPv6:2001:470:b8f6:1d::35])
 by serve.minyard.net (Postfix) with ESMTPSA id 18B65180047;
 Thu, 25 May 2023 23:53:13 +0000 (UTC)
Date: Thu, 25 May 2023 18:53:11 -0500
From: Corey Minyard <minyard@acm.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <ZG/05x7x6ubuOUUJ@mail.minyard.net>
References: <20230525204021.696858-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230525204021.696858-1-u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, May 25, 2023 at 10:40:21PM +0200, Uwe Kleine-König
    wrote: > After commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new()
    > call-back type"), all drivers being converted to .probe_new() a [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.219.45 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.219.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1q2Kll-0005mP-HM
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Switch i2c drivers back to
 use .probe()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBNYXkgMjUsIDIwMjMgYXQgMTA6NDA6MjFQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gQWZ0ZXIgY29tbWl0IGI4YTFhNGNkNWE5OCAoImkyYzogUHJvdmlkZSBhIHRl
bXBvcmFyeSAucHJvYmVfbmV3KCkKPiBjYWxsLWJhY2sgdHlwZSIpLCBhbGwgZHJpdmVycyBiZWlu
ZyBjb252ZXJ0ZWQgdG8gLnByb2JlX25ldygpIGFuZCB0aGVuCj4gMDNjODM1ZjQ5OGI1ICgiaTJj
OiBTd2l0Y2ggLnByb2JlKCkgdG8gbm90IHRha2UgYW4gaWQgcGFyYW1ldGVyIikgY29udmVydAo+
IGJhY2sgdG8gKHRoZSBuZXcpIC5wcm9iZSgpIHRvIGJlIGFibGUgdG8gZXZlbnR1YWxseSBkcm9w
IC5wcm9iZV9uZXcoKSBmcm9tCj4gc3RydWN0IGkyY19kcml2ZXIuCgpPaywgdGhpcyBpcyBpbiBt
eSBmb3ItbmV4dCB0cmVlLgoKT3IsIGlmIHlvdSBwcmVmZXI6CgpBY2tlZC1ieTogQ29yZXkgTWlu
eWFyZCA8Y21pbnlhcmRAbXZpc3RhLmNvbT4KCmlmIHlvdSB3b3VsZCBwcmVmZXIgdG8gYXBwbHkg
dGhpcywgYW5kIEkgY2FuIGRyb3AgbWluZS4KCi1jb3JleQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBV
d2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+
ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYyB8IDIgKy0KPiAgZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9pcG1iLmMgICAgfCAyICstCj4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3Np
Zi5jICAgIHwgMiArLQo+ICBkcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jICAgICB8IDIgKy0K
PiAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jIGIvZHJpdmVycy9j
aGFyL2lwbWkvaXBtYl9kZXZfaW50LmMKPiBpbmRleCBhMGU5ZTgwZDkyZWUuLjQ5MTAwODQ1ZmNi
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYwo+ICsrKyBi
L2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jCj4gQEAgLTM2Niw3ICszNjYsNyBAQCBz
dGF0aWMgc3RydWN0IGkyY19kcml2ZXIgaXBtYl9kcml2ZXIgPSB7Cj4gIAkJLm5hbWUgPSAiaXBt
Yi1kZXYiLAo+ICAJCS5hY3BpX21hdGNoX3RhYmxlID0gQUNQSV9QVFIoYWNwaV9pcG1iX2lkKSwK
PiAgCX0sCj4gLQkucHJvYmVfbmV3ID0gaXBtYl9wcm9iZSwKPiArCS5wcm9iZSA9IGlwbWJfcHJv
YmUsCj4gIAkucmVtb3ZlID0gaXBtYl9yZW1vdmUsCj4gIAkuaWRfdGFibGUgPSBpcG1iX2lkLAo+
ICB9Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX2lwbWIuYyBiL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWlfaXBtYi5jCj4gaW5kZXggM2YxYzlmMTU3M2U3Li40ZTMzNTgzMmZj
MjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMKPiArKysgYi9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1pX2lwbWIuYwo+IEBAIC01NzIsNyArNTcyLDcgQEAgc3RhdGlj
IHN0cnVjdCBpMmNfZHJpdmVyIGlwbWlfaXBtYl9kcml2ZXIgPSB7Cj4gIAkJLm5hbWUgPSBERVZJ
Q0VfTkFNRSwKPiAgCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9pcG1pX2lwbWJfbWF0Y2gsCj4gIAl9
LAo+IC0JLnByb2JlX25ldwk9IGlwbWlfaXBtYl9wcm9iZSwKPiArCS5wcm9iZQkJPSBpcG1pX2lw
bWJfcHJvYmUsCj4gIAkucmVtb3ZlCQk9IGlwbWlfaXBtYl9yZW1vdmUsCj4gIAkuaWRfdGFibGUJ
PSBpcG1pX2lwbWJfaWQsCj4gIH07Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lw
bWlfc3NpZi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKPiBpbmRleCAzYjkyMWM3
OGJhMDguLmM2YzliY2Y2YmY1NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1p
X3NzaWYuYwo+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4gQEAgLTIwNTQs
NyArMjA1NCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBzc2lmX2kyY19kcml2ZXIgPSB7
Cj4gIAkuZHJpdmVyCQk9IHsKPiAgCQkubmFtZQkJCT0gREVWSUNFX05BTUUKPiAgCX0sCj4gLQku
cHJvYmVfbmV3CT0gc3NpZl9wcm9iZSwKPiArCS5wcm9iZQkJPSBzc2lmX3Byb2JlLAo+ICAJLnJl
bW92ZQkJPSBzc2lmX3JlbW92ZSwKPiAgCS5hbGVydAkJPSBzc2lmX2FsZXJ0LAo+ICAJLmlkX3Rh
YmxlCT0gc3NpZl9pZCwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMu
YyBiL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMKPiBpbmRleCBjYWVlODQ4MjYxZTkuLjU2
MzQ2ZmIzMjg3MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCj4g
KysrIGIvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYwo+IEBAIC04NjAsNyArODYwLDcgQEAg
c3RhdGljIHN0cnVjdCBpMmNfZHJpdmVyIHNzaWZfYm1jX2RyaXZlciA9IHsKPiAgCQkubmFtZSAg
ICAgICAgICAgPSBERVZJQ0VfTkFNRSwKPiAgCQkub2ZfbWF0Y2hfdGFibGUgPSBzc2lmX2JtY19t
YXRjaCwKPiAgCX0sCj4gLQkucHJvYmVfbmV3ICAgICAgPSBzc2lmX2JtY19wcm9iZSwKPiArCS5w
cm9iZSAgICAgICAgICA9IHNzaWZfYm1jX3Byb2JlLAo+ICAJLnJlbW92ZSAgICAgICAgID0gc3Np
Zl9ibWNfcmVtb3ZlLAo+ICAJLmlkX3RhYmxlICAgICAgID0gc3NpZl9ibWNfaWQsCj4gIH07Cj4g
Cj4gYmFzZS1jb21taXQ6IGFjOWE3ODY4MWI5MjE4Nzc1MTg3NjNiYTBlODkyMDIyNTQzNDlkMWIK
PiAtLSAKPiAyLjM5LjIKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
