Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B0A92AA4C
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Jul 2024 22:06:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sQuct-0004st-5b;
	Mon, 08 Jul 2024 20:06:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sQucq-0004sl-TF
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jul 2024 20:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PT3BoGht7MDiQ2sKnuW3oqH0kk6WkmSkEQOa9yN3mT4=; b=i4dfSsBMdoRWu4CjbHxSyA1Xi+
 QLlAvXwtf/6Wv1F85pfEa78Xm2Sh/u1DKIORzC7B6Cff7OSzU3SUzjXs2y+HKxd0k+DQy5Me9Trru
 LNp8Tiw5gVysv+Sh21sHuHHoIbGkDdcevelfV2xkm93THJSu4En6/zqPggOz1xdMCIrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PT3BoGht7MDiQ2sKnuW3oqH0kk6WkmSkEQOa9yN3mT4=; b=gMr+BZk+ZwepJbXsrZKFjc+2m+
 PF8COEX17yQ2svoeZJAI82rTb4aEpoJ++h5uhfzm+uOHsbfuSy69Z+fuOEBC+Dn36AZKP73vVPiSL
 0P5KBcEr3KH062B6T9jUiZ7a3BIamecqw2AbYj0oKEuAK/mwcPxgjrv1CizFxwRY8txw=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sQucr-0005Ax-A0 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jul 2024 20:06:17 +0000
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-3d853e31de8so2511373b6e.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Jul 2024 13:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1720469171; x=1721073971;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PT3BoGht7MDiQ2sKnuW3oqH0kk6WkmSkEQOa9yN3mT4=;
 b=tmYMqQj4oyoD27cIeSzhKEpcMdnaZfi4/RzoQQxdQmbpRSfdtS60ahNof6RtPC7Sv9
 0fB3ebhwiEru09K7sxCzvDfentPoSCHJoZLFLHhECf421QGCN5T4mUhvHnxgqZiWGfQ/
 TCkua5p/O2C2KbKxB0KZrnhQFtaGpdyo8sATW2Ghm/RxKzjK+UY6gum3qwQdyMn2Jkfa
 t4ZZo3cO4thxxvUbPTtqmGIEu5E91XHqq9lcW162SdrZ/CWwyZgGcy1DSXgYdJ61jo4l
 uBxEfftkeA6QRk3IfxnS3TmNcjnVDPRr4GocV5BIMDLC9ZbYQ8L4aP+OpwYgJDxUeyV2
 QHCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720469171; x=1721073971;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PT3BoGht7MDiQ2sKnuW3oqH0kk6WkmSkEQOa9yN3mT4=;
 b=ejpW+tpFr0qSefQQ/6Ai/bwlI4b54K3HIiFYJQ8fpZkQSC+Sjqd7QNIy/LpNEMMeAU
 mp130PUXBG6VfVD3rSVmRyBIfwbw7lczxJ6TFFmyulUlA3s2DYdpSkfExJEriqtbzuvp
 +D87IMFw/CQOX4g2Ut9FpUFM0SM/qYtpu+JhpDrLewTyOmU6W6fdzmqCLUcpTPsmw2f7
 fhgCwJjTY3yj3c7EjUvdvYKG0xQ8fHug3WtIrh9s/hMe6ZA9m1VE6EefS6QtxSbgjmF5
 KtysZvEHeis3zpCMZSyguFzJhPH4/m0UWu3oc6zV5nZnfkj1daSEcjULR0g4PbXGn1hP
 q+Fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU54fhAcb8QGOdbOKg0uEGdeBEE7biOtptsDe2ocIDzVePX8vdb/PiptU362XnQfJWqoXyxOiSbDZcp0Tq1YVzHTNP1y/H0Y3HsK/KDupc46G48c4LahE3u
X-Gm-Message-State: AOJu0YxStlYWEEtmbvpkIj2KCS4j8TS33nCDb14AbzkCkCn2WudZUZnC
 ePyHasVrS/OQHOns8pRvzA2ANKI5EtreKVg5Jt3bZFe50dgHdJFSV/ixA4TMFWWpjhGj9C7cxe9
 y
X-Google-Smtp-Source: AGHT+IE4oTv5nlTr+ZYjb3suPY2974lpOVzXcklRhNhSxddMJzpIkvMo3L4ZPRzyT17kor2vaVQLXA==
X-Received: by 2002:a05:6808:201b:b0:3d9:31d9:f447 with SMTP id
 5614622812f47-3d93c046f04mr512139b6e.25.1720469169394; 
 Mon, 08 Jul 2024 13:06:09 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f295:d317:eb7e:d88e])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3d93acff4d9sm115349b6e.5.2024.07.08.13.06.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jul 2024 13:06:08 -0700 (PDT)
Date: Mon, 8 Jul 2024 15:06:07 -0500
From: Corey Minyard <corey@minyard.net>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Message-ID: <ZoxGrySzTwCYnhFf@mail.minyard.net>
References: <20240708150914.18190-2-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240708150914.18190-2-u.kleine-koenig@baylibre.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Jul 08, 2024 at 05:09:12PM +0200, Uwe Kleine-König
    wrote: > These drivers don't use the driver_data member of struct i2c_device_id,
    > so don't explicitly initialize this member. > > This prep [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.175 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [209.85.167.175 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.167.175 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.175 listed in wl.mailspike.net]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1sQucr-0005Ax-A0
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Drop explicit initialization
 of struct i2c_device_id::driver_data to 0
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBKdWwgMDgsIDIwMjQgYXQgMDU6MDk6MTJQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gVGhlc2UgZHJpdmVycyBkb24ndCB1c2UgdGhlIGRyaXZlcl9kYXRhIG1lbWJl
ciBvZiBzdHJ1Y3QgaTJjX2RldmljZV9pZCwKPiBzbyBkb24ndCBleHBsaWNpdGx5IGluaXRpYWxp
emUgdGhpcyBtZW1iZXIuCj4gCj4gVGhpcyBwcmVwYXJlcyBwdXR0aW5nIGRyaXZlcl9kYXRhIGlu
IGFuIGFub255bW91cyB1bmlvbiB3aGljaCByZXF1aXJlcwo+IGVpdGhlciBubyBpbml0aWFsaXph
dGlvbiBvciBuYW1lZCBkZXNpZ25hdG9ycy4gQnV0IGl0J3MgYWxzbyBhIG5pY2UKPiBjbGVhbnVw
IG9uIGl0cyBvd24uCj4gCj4gV2hpbGUgYXQgaXQsIGFsc28gcmVtb3ZlIGNvbW1hcyBhZnRlciB0
aGUgc2VudGluZWwgZW50cmllcy4KCkkndmUgcHVsbGVkIHRoaXMgaW50byBteSB0cmVlLgoKVGhh
bmtzLAoKLWNvcmV5Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAYmF5bGlicmUuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1i
X2Rldl9pbnQuYyB8IDQgKystLQo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX2lwbWIuYyAgICB8
IDQgKystLQo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyAgICB8IDIgKy0KPiAgZHJp
dmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYyAgICAgfCA0ICsrLS0KPiAgNCBmaWxlcyBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZf
aW50LmMKPiBpbmRleCA0OTEwMDg0NWZjYjcuLjcyOTYxMjcxODFlYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYwo+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1p
L2lwbWJfZGV2X2ludC5jCj4gQEAgLTM1MCw4ICszNTAsOCBAQCBzdGF0aWMgdm9pZCBpcG1iX3Jl
bW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICB9Cj4gIAo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IGkyY19kZXZpY2VfaWQgaXBtYl9pZFtdID0gewo+IC0JeyAiaXBtYi1kZXYiLCAwIH0s
Cj4gLQl7fSwKPiArCXsgImlwbWItZGV2IiB9LAo+ICsJe30KPiAgfTsKPiAgTU9EVUxFX0RFVklD
RV9UQUJMRShpMmMsIGlwbWJfaWQpOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lw
bWkvaXBtaV9pcG1iLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX2lwbWIuYwo+IGluZGV4IDRl
MzM1ODMyZmMyNi4uNmE0ZjI3OWM3YzFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1p
L2lwbWlfaXBtYi5jCj4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMKPiBAQCAt
NTYxLDggKzU2MSw4IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIG9mX2lwbWlfaXBtYl9tYXRj
aCk7Cj4gICNlbmRpZgo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIGlw
bWlfaXBtYl9pZFtdID0gewo+IC0JeyBERVZJQ0VfTkFNRSwgMCB9LAo+IC0Je30sCj4gKwl7IERF
VklDRV9OQU1FIH0sCj4gKwl7fQo+ICB9Owo+ICBNT0RVTEVfREVWSUNFX1RBQkxFKGkyYywgaXBt
aV9pcG1iX2lkKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3Np
Zi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKPiBpbmRleCAzZjUwOWEyMjIxN2Iu
Ljk2YWQ1NzFkMDQxYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYu
Ywo+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4gQEAgLTIwNDksNyArMjA0
OSw3IEBAIHN0YXRpYyBpbnQgZG1pX2lwbWlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgI2VuZGlmCj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQg
c3NpZl9pZFtdID0gewo+IC0JeyBERVZJQ0VfTkFNRSwgMCB9LAo+ICsJeyBERVZJQ0VfTkFNRSB9
LAo+ICAJeyB9Cj4gIH07Cj4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBzc2lmX2lkKTsKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYyBiL2RyaXZlcnMvY2hhci9p
cG1pL3NzaWZfYm1jLmMKPiBpbmRleCBhYjRlODdhOTlmMDguLmExNGZhZmM1ODNkNCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCj4gKysrIGIvZHJpdmVycy9jaGFy
L2lwbWkvc3NpZl9ibWMuYwo+IEBAIC04NTIsOCArODUyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3NpZl9ibWNfbWF0Y2hbXSA9IHsKPiAgTU9EVUxFX0RFVklDRV9UQUJM
RShvZiwgc3NpZl9ibWNfbWF0Y2gpOwo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2
aWNlX2lkIHNzaWZfYm1jX2lkW10gPSB7Cj4gLQl7IERFVklDRV9OQU1FLCAwIH0sCj4gLQl7IH0s
Cj4gKwl7IERFVklDRV9OQU1FIH0sCj4gKwl7IH0KPiAgfTsKPiAgTU9EVUxFX0RFVklDRV9UQUJM
RShpMmMsIHNzaWZfYm1jX2lkKTsKPiAgCj4gCj4gYmFzZS1jb21taXQ6IDBiNThlMTA4MDQyYjBl
ZDI4YTcxY2Q3ZWRmNTE3NTk5OTk1NWIyMzMKPiAtLSAKPiAyLjQzLjAKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxv
cGVyCg==
