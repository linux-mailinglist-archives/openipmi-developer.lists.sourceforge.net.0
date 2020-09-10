Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94382286720
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FLoIQGBCfdQJPnTZs35bs/9ZVxQBgcdE39HKh3LgKsM=; b=NIqvmDYg4oFuI2Z6Z4ZfXLEl0
	2md3JMCaiq2HvKVjz0cmBox9Yrh6gfUtM3FKHnsCmroIeD8oDD/oFaGAmFNXAluo6UWE0CohtWdfn
	kAVp1KYnG9PhlBnqm7kgt90Nq8WbYV10x6mWSLkdTs5sMrOWIevdR+sUNHYd7shCAUxd0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEBw-0007x6-L9; Wed, 07 Oct 2020 18:29:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=5158fc8e1=markubo@amazon.de>)
 id 1kGKh7-0006Wk-4v
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Sep 2020 11:24:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:CC:To:From:Subject:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=54BPerVazK5WnpwsLXibvnjNI0Jf8BfTNa7s15jKeQc=; b=NzIy8yUq7scsutD3RwMMauu/di
 ekfU0wdK1Kjxw/+yoB0fZCyXenkbxv+haK24VMm54Vc5PWp+DhnV3VLatRETUdDoHSGiHC0rTmyNX
 A3imeMdJIvkXYBlQUaPhJErCq0ZI0CXr9FORhXv81TVpMk6hzzVoTw4gPqc92ZbnGvZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:CC:To:From:Subject:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=54BPerVazK5WnpwsLXibvnjNI0Jf8BfTNa7s15jKeQc=; b=mX6fYoba2daD8fJoOEp9owcIsf
 NX4h9vGl6gQohWH08twJhlEsXu0s/uhq98vNdCrUTos5ID20Lnt7L1MWP9B9AKXZo/i5P5p0s3WNr
 UOa5yFBvgsx2vcSXKfUqNspxOev6W3CguDD4C/N+w7pCeT+3GW/5T1YqP9KT19yyCsUI=;
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGKgy-001zai-Q7
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Sep 2020 11:24:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1599737081; x=1631273081;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-id:mime-version:content-transfer-encoding:subject;
 bh=54BPerVazK5WnpwsLXibvnjNI0Jf8BfTNa7s15jKeQc=;
 b=tBvfawiZ0luLRlhoNMqj9aQAdigej20M0qHb56oEdcqsJzqY9J7K3rux
 9shZXGeLdEwTa2gP9lFRhUZOcdy6/elmxIGVazXWsZpAsQkow2CDuy4Z1
 v78x1m0prfEwkRB/8OhCfgsL3hyV0Tdb1ppp8KLgxK0hltpVoKXjTf1xT s=;
X-IronPort-AV: E=Sophos;i="5.76,412,1592870400"; d="scan'208";a="66910466"
Thread-Topic: [PATCH 3/3] ipmi: Add timeout waiting for channel information
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-a70de69e.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 10 Sep 2020 11:08:43 +0000
Received: from EX13D13EUB004.ant.amazon.com
 (iad12-ws-svc-p26-lb9-vlan3.iad.amazon.com [10.40.163.38])
 by email-inbound-relay-1e-a70de69e.us-east-1.amazon.com (Postfix) with ESMTPS
 id B731FA036C; Thu, 10 Sep 2020 11:08:41 +0000 (UTC)
Received: from EX13D13EUB001.ant.amazon.com (10.43.166.101) by
 EX13D13EUB004.ant.amazon.com (10.43.166.84) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 10 Sep 2020 11:08:40 +0000
Received: from EX13D13EUB001.ant.amazon.com ([10.43.166.101]) by
 EX13D13EUB001.ant.amazon.com ([10.43.166.101]) with mapi id 15.00.1497.006;
 Thu, 10 Sep 2020 11:08:40 +0000
To: "Boehme, Markus" <markubo@amazon.de>, "minyard@acm.org" <minyard@acm.org>
Thread-Index: AQHWhTO2nKm8oufFy0+MtM8/mgZyfKld5SQAgAPV7gA=
Date: Thu, 10 Sep 2020 11:08:40 +0000
Message-ID: <1599736120.29234.12.camel@amazon.de>
References: <1599495937-10654-1-git-send-email-markubo@amazon.com>
 <1599495937-10654-3-git-send-email-markubo@amazon.com>
 <20200908003412.GD15602@minyard.net>
In-Reply-To: <20200908003412.GD15602@minyard.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.164.78]
Content-ID: <35456D384B964743B6BFF12D20AAF3B3@amazon.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.171.184.25 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kGKgy-001zai-Q7
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:21 +0000
Subject: Re: [Openipmi-developer] [PATCH 3/3] ipmi: Add timeout waiting for
 channel information
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
From: "Boehme, Markus via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Boehme, Markus" <markubo@amazon.de>
Cc: "Park, Seongjae" <sjpark@amazon.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nuernberger,
 Stefan" <snu@amazon.de>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "Shah, Amit" <aams@amazon.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGV5IENvcmV5LCB0aGFua3MgZm9yIHRha2luZyBhIGxvb2shDQoNCk9uIE1vbiwgMjAyMC0wOS0w
NyBhdCAxOTozNCAtMDUwMCwgQ29yZXkgTWlueWFyZCB3cm90ZToNCj4gT24gTW9uLCBTZXAgMDcs
IDIwMjAgYXQgMDY6MjU6MzdQTSArMDIwMCwgTWFya3VzIEJvZWhtZSB3cm90ZToNCj4gPiANCj4g
PiBXZSBoYXZlIG9ic2VydmVkIGhvc3RzIHdpdGggbWlzYmVoYXZpbmcgQk1DcyB0aGF0IHJlY2Vp
dmUgYSBHZXQgQ2hhbm5lbA0KPiA+IEluZm8gY29tbWFuZCBidXQgZG9uJ3QgcmVzcG9uZC4gVGhp
cyBsZWFkcyB0byBhbiBpbmRlZmluaXRlIHdhaXQgaW4gdGhlDQo+ID4gaXBtaV9tc2doYW5kbGVy
J3MgX19zY2FuX2NoYW5uZWxzIGZ1bmN0aW9uLCBzaG93aW5nIHVwIGFzIGh1bmcgdGFzaw0KPiA+
IG1lc3NhZ2VzIGZvciBtb2Rwcm9iZS4NCj4gPiANCj4gPiBBZGQgYSB0aW1lb3V0IHdhaXRpbmcg
Zm9yIHRoZSBjaGFubmVsIHNjYW4gdG8gY29tcGxldGUuIElmIHRoZSBzY2FuDQo+ID4gZmFpbHMg
dG8gY29tcGxldGUgd2l0aGluIHRoYXQgdGltZSwgdHJlYXQgdGhhdCBsaWtlIElQTUkgMS4wIGFu
ZCBvbmx5DQo+ID4gYXNzdW1lIHRoZSBwcmVzZW5jZSBvZiB0aGUgcHJpbWFyeSBJUE1CIGNoYW5u
ZWwgYXQgY2hhbm5lbCBudW1iZXIgMC4NCj4gWy4uLl0NCj4gV2hpbGUgdGhpbmtpbmcgYWJvdXQg
dGhpcywgSSByZWFsaXplZCBhbiBpc3N1ZSB3aXRoIHRoZXNlIHBhdGNoZXMuDQo+IFRoZXJlIHNo
b3VsZCBiZSB0aW1lcnMgaW4gdGhlIGxvd2VyIGxheWVycyB0aGF0IGRldGVjdCB0aGF0IHRoZSBC
TUMgZG9lcw0KPiBub3QgcmVzcG9uZCBhbmQgc2hvdWxkIHJldHVybiBhbiBlcnJvciByZXNwb25z
ZS7CoMKgVGhpcyBpcyBzdXBwb3NlZCB0byBiZQ0KPiBndWFyYW50ZWVkIGJ5IHRoZSBsb3dlciBs
YXllciwgeW91IHNob3VsZG4ndCBuZWVkIHRpbWVycyBoZXJlLsKgwqBJbiBmYWN0LA0KPiBpZiB5
b3UgYWJvcnQgd2l0aCBhIHRpbWVyIGhlcmUsIHlvdSBzaG91bGQgZ2V0IGEgbG93ZXIgbGF5ZXIg
cmVwb25kcw0KPiBsYXRlciwgY2F1c2luZyBvdGhlciBpc3N1ZXMuDQo+IA0KPiBTbywgdGhpcyBp
cyB3cm9uZy7CoMKgSWYgeW91IGFyZSBuZXZlciBnZXR0aW5nIGEgcmVzcG9uc2UsIHRoZXJlIGlz
IGEgYnVnDQo+IGluIHRoZSBsb3dlciBsYXllci7CoMKgSWYgeW91IGFyZSBub3QgZ2V0dGluZyB0
aGUgZXJyb3IgcmVzcG9uc2UgYXMNCj4gcXVpY2tseSBhcyB5b3Ugd291bGQgbGlrZSwgSSdtIG5v
dCBzdXJlIHdoYXQgdG8gZG8gYWJvdXQgdGhhdC4NCj4gDQoNCkkgc2VlLiBJIG1pZ2h0IG5vdCBi
ZSBhYmxlIHRvIGdldCBob2xkIG9mIG1vcmUgaG9zdHMgYmVoYXZpbmcgdGhpcyB3YXksDQpidXQg
aWYgSSBkbywgSSdsbCBkaWcgZGVlcGVyIGludG8gd2h5IHRoZSBsb3dlciBsYXllciB0aW1lb3V0
cyBkaWRuJ3QNCnNhdmUgdXMgaGVyZS4gVGhhbmtzIGZvciB0aGUgcG9pbnRlci4NCg0KDQoNCj4g
PiBTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gTnVlcm5iZXJnZXIgPHNudUBhbWF6b24uY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IE1hcmt1cyBCb2VobWUgPG1hcmt1Ym9AYW1hem9uLmNvbT4NCj4gPiAt
LS0NCj4gPiDCoGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jIHwgNzIgKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDM5
IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lw
bWlfbXNnaGFuZGxlci5jDQo+ID4gaW5kZXggMmEyZThiMi4uOWRlOWJhNiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jDQo+ID4gQEAgLTMzMTUsNDYgKzMzMTUsNTIg
QEAgY2hhbm5lbF9oYW5kbGVyKHN0cnVjdCBpcG1pX3NtaSAqaW50Ziwgc3RydWN0IGlwbWlfcmVj
dl9tc2cgKm1zZykNCj4gPiDCoCAqLw0KPiA+IMKgc3RhdGljIGludCBfX3NjYW5fY2hhbm5lbHMo
c3RydWN0IGlwbWlfc21pICppbnRmLCBzdHJ1Y3QgaXBtaV9kZXZpY2VfaWQgKmlkKQ0KPiA+IMKg
ew0KPiA+IC3CoMKgwqDCoMKgaW50IHJ2Ow0KPiA+ICvCoMKgwqDCoMKgbG9uZyBydjsNCj4gPiAr
wqDCoMKgwqDCoHVuc2lnbmVkIGludCBzZXQ7DQo+ID4gDQo+ID4gLcKgwqDCoMKgwqBpZiAoaXBt
aV92ZXJzaW9uX21ham9yKGlkKSA+IDENCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgfHwgKGlwbWlfdmVyc2lvbl9tYWpvcihpZCkgPT0gMQ0KPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCYmIGlwbWlfdmVy
c2lvbl9taW5vcihpZCkgPj0gNSkpIHsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1
bnNpZ25lZCBpbnQgc2V0Ow0KPiA+ICvCoMKgwqDCoMKgaWYgKGlwbWlfdmVyc2lvbl9tYWpvcihp
ZCkgPT0gMSAmJiBpcG1pX3ZlcnNpb25fbWlub3IoaWQpIDwgNSkgew0KPiBUaGlzIGlzIGluY29y
cmVjdCwgaXQgd2lsbCBub3QgY29ycmVjdGx5IGhhbmRsZSBJUE1JIDAueCBCTUNzLsKgwqBZZXMs
DQo+IHRoZXkgZXhpc3QuDQoNCkludGVyZXN0aW5nISBJIHdhc24ndCBhd2FyZSBvZiB0aG9zZS4g
U2VhcmNoaW5nIHRoZSB3ZWIgZG9lc24ndCB0dXJuIHVwDQptdWNoIGFuZCB0aGUgc3BlYyBkb2Vz
bid0IG1lbnRpb24gdGhlbSBlaXRoZXIuIEFyZSB0aGVzZSBwcmUtcmVsZWFzZQ0KaW1wbGVtZW50
YXRpb25zIG9mIHRoZSBJUE1JIDEuMCBzcGVjIG9yIHNvbWUga2luZCBvZiAiSVBNSSBsaWdodCI/
DQoNCk1hcmt1cwoKCgpBbWF6b24gRGV2ZWxvcG1lbnQgQ2VudGVyIEdlcm1hbnkgR21iSApLcmF1
c2Vuc3RyLiAzOAoxMDExNyBCZXJsaW4KR2VzY2hhZWZ0c2Z1ZWhydW5nOiBDaHJpc3RpYW4gU2No
bGFlZ2VyLCBKb25hdGhhbiBXZWlzcwpFaW5nZXRyYWdlbiBhbSBBbXRzZ2VyaWNodCBDaGFybG90
dGVuYnVyZyB1bnRlciBIUkIgMTQ5MTczIEIKU2l0ejogQmVybGluClVzdC1JRDogREUgMjg5IDIz
NyA4NzkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
