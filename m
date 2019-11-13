Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA8BF9F99
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Nov 2019 01:51:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUgsc-0003Io-1y; Wed, 13 Nov 2019 00:51:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iUgsZ-0003Ih-NW
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 00:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8BT6daCO7rWCmxUPquIuhlDA7Ogbr/3u1F/qsZuINIo=; b=XkBS4HCAAnSYQCzBMlrN2dMMQq
 YQ/J8D0jIZWPnv/KL8efaF8PoEBkbYs1LdIOS2C9ejjoWtt/yE4v8shbAb5kwMJ7VqyIrHBmBn0ai
 6h3HoJp/9Ulh5DKsNCrVrjrANpzxJN02BAUUXkVM1BrvfLGIcxSz9UT4k3FJg2TVdD4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8BT6daCO7rWCmxUPquIuhlDA7Ogbr/3u1F/qsZuINIo=; b=WEmgolvTk1axKviumPpM1awTaM
 iq3dBYJPiK6dUYwV3FtbCsI3Uuo3gKCYf4AUX/MJj7jxgBQPmFjYc8JDWvobE7SApDJp4YSHrYcUU
 wpTXxOI3j3J69vi/BCWFl2RDN0+A5c7Es9a30IM4M8AbozBWJrbqf6hzywq94dpc27RM=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iUgsV-000Dsy-NM
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 00:51:27 +0000
Received: by mail-ot1-f67.google.com with SMTP id b16so108183otk.9
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Nov 2019 16:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8BT6daCO7rWCmxUPquIuhlDA7Ogbr/3u1F/qsZuINIo=;
 b=U292mIpZOTOrebmfuZAF/2lMOkCrJRrkLdXZ1tmiH7m/mk2GlwbOq0vR64NgIvMTtQ
 ZQsuIFP1FTZIZf3eBk81/NYNy6u8k7Sp4is/qdMyizw2MRhgqQ5E3TmViDybX8gyGCfj
 6NFYl5zx3pxnDOXpIVtfdWDyA2MyTUp1vQkZJyaMXUyNPKKnuQI6KBavRXzjOzBiyRI3
 5EX4qzvXbhvai3oRJDDEqS80d84jsd3MmdH21h+7Jbi04sHfv2bfqHXJMcvOsFucYRTR
 MvY7BGgSn3jAeoEr8uIOlFVHCfD2MoOl59V6GWtWQ8h579SSUdM8bh18nXi4OKKymOAN
 q+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=8BT6daCO7rWCmxUPquIuhlDA7Ogbr/3u1F/qsZuINIo=;
 b=noxQ831JbRkywWUwyHbjj6nU6OlBmZTgivUCYAtEtJtyDUTy/uq8zD5UozOsD8x9FW
 /lxgdOkXYktSqt6i4/qsxOtlebBZtSkZSavd04KTLMNJpbQO9xG4fDjMbipY5gm2HOET
 UqXr5PQsZH5OMyqtys98/d0UVQobiXfY3jkykPHwC2Fb3xOomY4jlkqP6LxBtJq4jct5
 VymxZwMky2CRgO7H+H+VZxkBcmjduDBiz3OoqERb/O9zVOHXYUSnSaMMV+iWH7XGq949
 lE14GQovQvHfN0ntJYrzG7H9aNwg9q9RrjvYUw0z8/z2skM4jFuz7BNg8VieEw+ZewSd
 TMvA==
X-Gm-Message-State: APjAAAV1XY8Ha8PmfrFoEfQbiFo0x9+tJI4MG+FWChBHZNuGn2OR5j0+
 AKuSeHlZblOoBIh45pd4kQ==
X-Google-Smtp-Source: APXvYqzHnt4GBogMEYRcGGdCUfNH4wDXRQjRowWJDj84lzygvhQMHEOPOtbJqUUjn/hVNd5VS/OmHQ==
X-Received: by 2002:a9d:12a3:: with SMTP id g32mr332590otg.61.1573606277516;
 Tue, 12 Nov 2019 16:51:17 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id q4sm177478otl.79.2019.11.12.16.51.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 16:51:17 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 947A618016D;
 Wed, 13 Nov 2019 00:51:16 +0000 (UTC)
Date: Tue, 12 Nov 2019 18:51:15 -0600
From: Corey Minyard <minyard@acm.org>
To: Asmaa Mnebhi <Asmaa@mellanox.com>
Message-ID: <20191113005115.GK2882@minyard.net>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
 <20191112023610.3644314-2-vijaykhemka@fb.com>
 <20191112124845.GE2882@minyard.net>
 <7BC487D6-6ACA-46CE-A751-8367FEDEE647@fb.com>
 <20191112202932.GJ2882@minyard.net>
 <DB6PR0501MB27127CF534336BDEB5D005FFDA770@DB6PR0501MB2712.eurprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB6PR0501MB27127CF534336BDEB5D005FFDA770@DB6PR0501MB2712.eurprd05.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mellanox.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iUgsV-000Dsy-NM
Subject: Re: [Openipmi-developer] [PATCH 2/2] drivers: ipmi: Modify max
 length of IPMB packet
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
Cc: "cminyard@mvista.com" <cminyard@mvista.com>, Sai Dasari <sdasari@fb.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Vijay Khemka <vijaykhemka@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMTA6MDY6MDBQTSArMDAwMCwgQXNtYWEgTW5lYmhpIHdy
b3RlOgo+IEFsc28sIGxldCBtZSBjbGFyaWZ5IG9uZSB0aGluZy4gSXQgZG9lc24ndCBtYXR0ZXIg
aG93IGJpZyB0aGUgcmVzcG9uc2UgaXMuIEluIG15IHRlc3RpbmcsIEkgYWxzbyBoYWQgc29tZSBy
ZXNwb25zZXMgdGhhdCBhcmUgb3ZlciAxMjggYnl0ZXMsIGFuZCB0aGlzIGRyaXZlciBzdGlsbCB3
b3Jrcy4gSXQgaXMgdGhlIHVzZXIgc3BhY2UgcHJvZ3JhbSB3aGljaCBkZXRlcm1pbmVzIHRoZSBs
YXN0IGJ5dGVzIHJlY2VpdmVkLiBUaGUgMTI4IGJ5dGVzIGlzIHRoZSBtYXggbnVtYmVyIG9mIGJ5
dGVzIGhhbmRsZWQgYnkgeW91ciBpMmMvc21idXMgZHJpdmVyIGF0IGVhY2ggaTJjIHRyYW5zYWN0
aW9uLiBNeSBpMmMgZHJpdmVyIGNhbiBvbmx5IHRyYW5zbWl0IDEyOCBieXRlcyBhdCBhIHRpbWUu
IFNvIGp1c3QgbGlrZSBDb3JleSBwb2ludGVkIG91dCwgaXQgd291bGQgYmUgYmV0dGVyIHRvIHBh
c3MgdGhpcyB0aHJvdWdoIEFDUEkvZGV2aWNlIHRyZWUuCgpZZWFoLCBJIHdvdWxkIHJlYWxseSBw
cmVmZXIgZGV2aWNlIHRyZWUuICBUaGF0J3Mgd2hhdCBpdCdzIGRlc2lnbmVkIGZvciwKcmVhbGx5
LiAgaW9jdGxzIGFyZSBub3QgcmVhbGx5IHdoYXQgeW91IHdhbnQgZm9yIHRoaXMuICBzeXNmcyBp
cyBhCmJldHRlciBjaG9pY2UgYXMgYSBiYWNrdXAgZm9yIGRldmljZSB0cmVlIChzbyB5b3UgY2Fu
IGNoYW5nZSBpdCBpZiBpdCdzCndyb25nKS4KCi1jb3JleQoKPiAKPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+IEZyb206IENvcmV5IE1pbnlhcmQgPHRjbWlueWFyZEBnbWFpbC5jb20+IE9u
IEJlaGFsZiBPZiBDb3JleSBNaW55YXJkCj4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgMTIsIDIw
MTkgMzozMCBQTQo+IFRvOiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWthQGZiLmNvbT4KPiBDYzog
QXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT47IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc+OyBvcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBjbWlueWFyZEBtdmlzdGEuY29t
OyBBc21hYSBNbmViaGkgPEFzbWFhQG1lbGxhbm94LmNvbT47IGpvZWxAam1zLmlkLmF1OyBsaW51
eC1hc3BlZWRAbGlzdHMub3psYWJzLm9yZzsgU2FpIERhc2FyaSA8c2Rhc2FyaUBmYi5jb20+Cj4g
U3ViamVjdDogUmU6IFtQQVRDSCAyLzJdIGRyaXZlcnM6IGlwbWk6IE1vZGlmeSBtYXggbGVuZ3Ro
IG9mIElQTUIgcGFja2V0Cj4gCj4gT24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDc6NTY6MzRQTSAr
MDAwMCwgVmlqYXkgS2hlbWthIHdyb3RlOgo+ID4gCj4gPiAKPiA+IO+7v09uIDExLzEyLzE5LCA0
OjQ4IEFNLCAiQ29yZXkgTWlueWFyZCIgPHRjbWlueWFyZEBnbWFpbC5jb20gb24gYmVoYWxmIG9m
IG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPiAKPiA+ICAgICBPbiBNb24sIE5vdiAxMSwgMjAx
OSBhdCAwNjozNjoxMFBNIC0wODAwLCBWaWpheSBLaGVta2Egd3JvdGU6Cj4gPiAgICAgPiBBcyBw
ZXIgSVBNQiBzcGVjaWZpY2F0aW9uLCBtYXhpbXVtIHBhY2tldCBzaXplIHN1cHBvcnRlZCBpcyAy
NTUsCj4gPiAgICAgPiBtb2RpZmllZCBNYXggbGVuZ3RoIHRvIDI0MCBmcm9tIDEyOCB0byBhY2Nv
bW1vZGF0ZSBtb3JlIGRhdGEuCj4gPiAgICAgCj4gPiAgICAgSSBjb3VsZG4ndCBmaW5kIHRoaXMg
aW4gdGhlIElQTUIgc3BlY2lmaWNhdGlvbi4KPiA+ICAgICAKPiA+ICAgICBJSVJDLCB0aGUgbWF4
aW11bSBvbiBJMkMgaXMgMzIgYnl0cywgYW5kIHRhYmxlIDYtOSBpbiB0aGUgSVBNSSBzcGVjLAo+
ID4gICAgIHVuZGVyICJJUE1CIE91dHB1dCIgc3RhdGVzOiBUaGUgSVBNQiBzdGFuZGFyZCBtZXNz
YWdlIGxlbmd0aCBpcwo+ID4gICAgIHNwZWNpZmllZCBhcyAzMiBieXRlcywgbWF4aW11bSwgaW5j
bHVkaW5nIHNsYXZlIGFkZHJlc3MuCj4gPiAKPiA+IFdlIGFyZSB1c2luZyBJUE1JIE9FTSBtZXNz
YWdlcyBhbmQgb3VyIHJlc3BvbnNlIHNpemUgaXMgYXJvdW5kIDE1MCAKPiA+IGJ5dGVzIEZvciBz
b21lIG9mIHJlc3BvbnNlcy4gVGhhdCdzIHdoeSBJIGhhZCBzZXQgaXQgdG8gMjQwIGJ5dGVzLgo+
IAo+IEhtbS4gIFdlbGwsIHRoYXQgaXMgYSBwcmV0dHkgc2lnbmlmaWNhbnQgdmlvbGF0aW9uIG9m
IHRoZSBzcGVjLCBidXQgdGhlcmUncyBub3RoaW5nIGhhcmQgaW4gdGhlIHByb3RvY29sIHRoYXQg
cHJvaGliaXRzIGl0LCBJIGd1ZXNzLgo+IAo+IElmIEFzbWFhIGlzIG9rIHdpdGggdGhpcywgSSdt
IG9rIHdpdGggaXQsIHRvby4KPiAKPiAtY29yZXkKPiAKPiA+ICAgICAKPiA+ICAgICBJJ20gbm90
IHN1cmUgd2hlcmUgMTI4IGNhbWUgZnJvbSwgYnV0IG1heWJlIGl0IHNob3VsZCBiZSByZWR1Y2Vk
IHRvIDMxLgo+ID4gICAgIAo+ID4gICAgIC1jb3JleQo+ID4gICAgIAo+ID4gICAgID4gCj4gPiAg
ICAgPiBTaWduZWQtb2ZmLWJ5OiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWthQGZiLmNvbT4KPiA+
ICAgICA+IC0tLQo+ID4gICAgID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jIHwg
MiArLQo+ID4gICAgID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+ID4gICAgID4gCj4gPiAgICAgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkv
aXBtYl9kZXZfaW50LmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYwo+ID4gICAg
ID4gaW5kZXggMjQxOWI5YTkyOGIyLi43ZjkxOThiYmNlOTYgMTAwNjQ0Cj4gPiAgICAgPiAtLS0g
YS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYwo+ID4gICAgID4gKysrIGIvZHJpdmVy
cy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMKPiA+ICAgICA+IEBAIC0xOSw3ICsxOSw3IEBACj4g
PiAgICAgPiAgI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+Cj4gPiAgICAgPiAgI2luY2x1ZGUg
PGxpbnV4L3dhaXQuaD4KPiA+ICAgICA+ICAKPiA+ICAgICA+IC0jZGVmaW5lIE1BWF9NU0dfTEVO
CQkxMjgKPiA+ICAgICA+ICsjZGVmaW5lIE1BWF9NU0dfTEVOCQkyNDAKPiA+ICAgICA+ICAjZGVm
aW5lIElQTUJfUkVRVUVTVF9MRU5fTUlOCTcKPiA+ICAgICA+ICAjZGVmaW5lIE5FVEZOX1JTUF9C
SVRfTUFTSwkweDQKPiA+ICAgICA+ICAjZGVmaW5lIFJFUVVFU1RfUVVFVUVfTUFYX0xFTgkyNTYK
PiA+ICAgICA+IC0tIAo+ID4gICAgID4gMi4xNy4xCj4gPiAgICAgPgo+ID4gICAgIAo+ID4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBPcGVu
aXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Cj4gT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldAo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3BlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWkt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
