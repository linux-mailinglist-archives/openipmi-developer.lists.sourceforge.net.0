Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3DF28672F
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC2-00083U-L7; Wed, 07 Oct 2020 18:29:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wubo40@huawei.com>) id 1kKAn5-00068n-8z
 for openipmi-developer@lists.sourceforge.net; Mon, 21 Sep 2020 01:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d49KR9WczWHFh3cEcUf/Y0qlW3D4m7Sl2lZ6HTJXnS0=; b=DZw1H6KxBddVUFaQLeD08fdCmm
 RRvRS9TotpNw9yul+yw/OJm5EopMNdZZlxxn/GtmhhGVKk2OLzWJmlT8Z0tOH1dB7h1qIGEuo5hBQ
 GPhMbpKanc1q78VTf7xmK80g2AiDDTPYlyWGOTOkK0FFJIESyAGQYyBgznjreYiRx3Oo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d49KR9WczWHFh3cEcUf/Y0qlW3D4m7Sl2lZ6HTJXnS0=; b=aL0yD8u9HUqizGbSlt3E13+0zo
 4wi3mZDmPaNewBVmEAFtv6xGRUQSB2r+pyJZEphEhDhN4J6fvsK2uJpUYRcG1DjFrvLObxFku8Uip
 eBNgv6EIg5nvrJfeimAE/+wfY59owcgfC1AKvgdABzaz+yb8LaPSODXuQgWsmi8yo0C8=;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kKAmw-00H7GC-MP
 for openipmi-developer@lists.sourceforge.net; Mon, 21 Sep 2020 01:38:51 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3604D9B1EFC80C9E6556;
 Mon, 21 Sep 2020 09:38:33 +0800 (CST)
Received: from [10.174.179.35] (10.174.179.35) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Mon, 21 Sep 2020 09:38:24 +0800
To: <minyard@acm.org>
References: <1600074602-622893-1-git-send-email-wubo40@huawei.com>
 <TYAPR01MB2429AAE58FF9FF020F657509B5230@TYAPR01MB2429.jpnprd01.prod.outlook.com>
 <4e1abe31-da85-1b64-f680-b1e91027bff5@huawei.com>
 <20200914142938.GK15602@minyard.net>
 <e6e9edcd-14a5-476d-bc56-166c2d10fb41@huawei.com>
 <20200916153858.GG3674@minyard.net>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <85a9be91-b6a1-b7d7-0d9b-c2268ddd9b05@huawei.com>
Date: Mon, 21 Sep 2020 09:38:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200916153858.GG3674@minyard.net>
Content-Language: en-US
X-Originating-IP: [10.174.179.35]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kKAmw-00H7GC-MP
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:28 +0000
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix out-of-bounds in
 write_next_byte()
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
Cc: "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>,
 =?UTF-8?B?5rKz5ZCI6Iux5a6PIC8gS0FXQUnvvIxISURFSElSTw==?=
 <hidehiro.kawai.ez@hitachi.com>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "liuzhiqiang26@huawei.com" <liuzhiqiang26@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMjAyMC85LzE2IDIzOjM4LCBDb3JleSBNaW55YXJkIHdyb3RlOgo+IE9uIFdlZCwgU2VwIDE2
LCAyMDIwIGF0IDEwOjUyOjMxUE0gKzA4MDAsIFd1IEJvIHdyb3RlOgo+PiBPbiAyMDIwLzkvMTQg
MjI6MjksIENvcmV5IE1pbnlhcmQgd3JvdGU6Cj4+PiBPbiBNb24sIFNlcCAxNCwgMjAyMCBhdCAw
OTozMzowN1BNICswODAwLCBXdSBCbyB3cm90ZToKPj4+PiBPbiAyMDIwLzkvMTQgMjA6MTMsIOay
s+WQiOiLseWujyAvIEtBV0FJ77yMSElERUhJUk8gd3JvdGU6Cj4+Pj4+IEhpLCBXdQo+Pj4+Pgo+
Pj4+Pj4gRnJvbTogV3UgQm8gPHd1Ym80MEBodWF3ZWkuY29tPgo+Pj4+Pj4gSW4gdGhlIHZpcnR1
YWwgbWFjaGluZSwgVXNlIG1jZV9pbmplY3QgdG8gaW5qZWN0IGVycm9ycyBpbnRvIHRoZSBzeXN0
ZW0uCj4+Pj4+PiBBZnRlciBtY2UtaW5qZWN0IGluamVjdHMgYW4gdW5jb3JyZWN0YWJsZSBlcnJv
ciwgdGhlcmUgaXMgYSBwcm9iYWJpbGl0eQo+Pj4+Pj4gdGhhdCB0aGUgdmlydHVhbCBtYWNoaW5l
IGlzIG5vdCByZXNldCBpbW1lZGlhdGVseSwKPj4+Pj4+IGJ1dCBoYW5ncyBmb3IgbW9yZSB0aGFu
Cj4+Pj4+PiAzMDAwIHNlY29uZHMuIEFuZCB0aGUgd3JpdGVfZGF0YSBhcnJheSBpcyBhY2Nlc3Nl
ZCBvdXQgb2YgYm91bmRzLgo+Pj4+Pj4KPj4+Pj4+IFRoZSByZWFsIHJlYXNvbiBpcyB0aGF0IHNt
aV9ldmVudF9oYW5kbGVyIGxhY2sgb2YgbG9jayBwcm90ZWN0aW9uIGluIHRoZQo+Pj4+Pj4gbXVs
dGktdGhyZWFkZWQgc2NlbmFyaW8sIHdoaWNoIGNhdXNlcyB3cml0ZV9wb3MKPj4+Pj4+IHRvIGV4
Y2VlZCB0aGUgc2l6ZSBvZiB0aGUgd3JpdGVfZGF0YSBhcnJheS4KPj4+Pj4KPj4+Pj4gVGhhbmsg
eW91IGZvciB0aGUgZml4LCBidXQgSSB3b25kZXIgd2h5IHRoaXMgbXVsdGktdGhyZWFkZWQgc2Nl
bmFyaW8gaGFwcGVucy4KPj4+Pj4gSWYgbXkgdW5kZXJzdGFuZGluZyBpcyBjb3JyZWN0LCBvbmx5
IG9uZSBDUFUgY2FuIHJ1biBwYW5pYyByb3V0aW5lcywgYW5kCj4+Pj4+IHRoaXMgbWVhbnMgb25s
eSBvbmUgQ1BVIGNhbGxzIGZsdXNoX21lc3NhZ2VzLiAgRGlkIEkgbWlzcyBzb21lIGNhbGwgcGF0
aD8KPj4+Pj4KPj4+Pj4gQmVzdCByZWdhcmRzLAo+Pj4+Pgo+Pj4+PiBIaWRlaGlybyBLYXdhaQo+
Pj4+PiBIaXRhY2hpLCBMdGQuIFJlc2VhcmNoICYgRGV2ZWxvcG1lbnQgR3JvdXAKPj4+Pgo+Pj4+
IEhpLAo+Pj4+Cj4+Pj4gWW91J3JlIHJpZ2h0LCBvbmx5IG9uZSBDUFUgY2FuIHJ1biBwYW5pYyBy
b3V0aW5lcy4KPj4+PiBTb3JyeSwgSSBtaXNzZWQgYW5vdGhlciBjYWxsIHBhdGguIHdoZW4gdGhl
IHBhbmljIG9jY3VycmVkIGFuZCBpbnRlcnJ1cHRpb24KPj4+PiBvY2N1cnJlZCBhdCB0aGUgc2Ft
ZSB0aW1lLgo+Pj4+Cj4+Pj4gQ1BVMAkJICAgICAgICAgICAgICAgICAgICBDUFUzCj4+Pj4gICAg
LT5ubWlfaGFuZGxlCQkJICAgICBoYW5kbGVfaXJxCj4+Pj4gICAgICAtPiBtY2VfcmFpc2Vfbm90
aWZ5CQkgICAgICAtPiBoYW5kbGVfZmFzdGVvaV9pcnEKPj4+PiAgICAgICAgLT4gcGFuaWNfZXZl
bnQJCSAgICAgICAgLT4gaGFuZGxlX2lycV9ldmVudAo+Pj4+ICAgICAgICAgIC0+IGlwbWlfcGFu
aWNfcmVxdWVzdF9hbmRfd2FpdCAgICAgIC0+IGhhbmRsZV9pcnFfZXZlbnRfcGVyY3B1Cj4+Pj4g
ICAgICAgICAgICAgLT5mbHVzaF9tZXNzYWdlcyAgICAgICAgICAgICAgICAgICAtPiBpcG1pX3Np
X2lycV9oYW5kbGVyCj4+Pj4gICAgICAgICAgICAgICAgIC0+IHNtaV9ldmVudF9oYW5kbGVyICAg
ICAgICAgICAgICAtPiBzbWlfZXZlbnRfaGFuZGxlcgo+Pj4+IAkJLT5rY3NfZXZlbnQoKSAgICAg
ICAgICAgICAgICAgICAgICAgLT5rY3NfZXZlbnQoKQo+Pj4+Cj4+Pj4gVGhlcmUgaXMgYSBzaW11
bHRhbmVvdXMgY2FsbCB0byB0aGUgc21pX2V2ZW50X2hhbmRsZXIoKSBmdW5jdGlvbi4KPj4+Cj4+
PiBXaXRoIHlvdXIgcGF0Y2gsIHRoaXMgd2lsbCByZXN1bHQgaW4gc3Bpbm5pbmcgd2FpdGluZyBm
b3IgdGhlIGxvY2sKPj4+IGZvcmV2ZXIuIFNvIHRoYXQncyBub3Qgd2hhdCBpcyBoYXBwZW5pbmcg
aGVyZS4KPj4+Cj4+PiBUaGUgcGFuaWMgZXZlbnQgc2hvdWxkIHN0b3AgdGhlIG90aGVyIHByb2Nl
c3NvcnMgYmVmb3JlIGZsdXNoX21lc3NhZ2VzKCkKPj4+IGhhcHBlbnMsIHJpZ2h0PyAgSWYgc28s
IGl0IGlzIHBvc3NpYmxlIHRoYXQgdGhlIElQTUkgc3RhdGUgbWFjaGluZSBpcwo+Pj4gcnVubmlu
ZywgYnV0IHRoaXMgc2hvdWxkIHJlc3VsdCBpbiB0aGUgc3RhdGUgbWFjaGluZSBiZWluZyByZXNl
dC4KPj4+Cj4+PiAtY29yZXkKPj4+Cj4+Cj4+IEhpLCBjb3JleQo+Pgo+PiBUaGFua3MgZm9yIHlv
dXIgcmVwbHkuIE1DRSBhcHBlYXJzIG9uIGFsbCBDUFVzLAo+PiBDdXJyZW50bHkgYWxsIENQVXMg
YXJlIGluIHRoZSBOTUkgaW50ZXJydXB0IGNvbnRleHQuCj4+IGNwdTAgaXMgdGhlIGZpcnN0IHRv
IHNlaXplIHRoZSBvcHBvcnR1bml0eSB0byBydW4gcGFuaWMgcm91dGluZXMsIGFuZCBwYW5pYwo+
PiBldmVudCBzaG91bGQgc3RvcCB0aGUgb3RoZXIgcHJvY2Vzc29ycyBiZWZvcmUgZmx1c2hfbWVz
c2FnZXMoKS4gYnV0IGNwdTEsCj4+IGNwdTIgYW5kIGNwdTMgaGFzIGFscmVhZHkgaW4gTk1JIGlu
dGVycnVwdCBjb250ZXh0LCBTbyB0aGUgU2Vjb25kIE5NSQo+PiBpbnRlcnJ1cHQgd2lsbCBub3Qg
YmUgcHJvY2Vzc2VkIGFnYWluIGJ5IGNwdTEsIGNwdTIgYW5kIGNwdTMuCj4+IGF0IHRoaXMgdGlt
ZSwgY3B1MSxjcHUyIGFuZCBjcHUzIGRpZCBub3Qgc3RvcGVkLgo+Pgo+PiBjcHUxLCBjcHUyIGFu
ZCBjcHUzIGFyZSB3YWl0dGluZyBmb3IgY3B1MCB0byBmaW5pc2ggdGhlIHBhbmljIHByb2Nlc3Mu
IChkbwo+PiB3YWl0X2Zvcl9wYW5pYygpKSwgdGhlIGlycSBpcyBlbmFibGVkIGluIHRoZSB3YWl0
X2Zvcl9wYW5pYygpIGZ1bmN0aW9uLgo+Pgo+PiBpcG1pIElSUSBvY2N1cnMgb24gdGhlIGNwdTMs
IGFuZCB0aGUgY3B1MCBpcyBkb2luZyB0aGUgcGFuaWMsCj4+IHRoZXkgaGF2ZSB0aGUgb3Bwb3J0
dW5pdHkgdG8gY2FsbCB0aGUgc21pX2V2ZW50X2hhbmRsZXIoKSBmdW5jdGlvbgo+PiBjb25jdXJy
ZW50bHkuCj4gCj4gQWgsIEkgdW5kZXJzdGFuZCBub3cuICBUaGlzIHNvdW5kcyBtb3JlIGxpa2Ug
YSBidWcgaW4gdGhlIHg4NiBleGNlcHRpb24KPiBoYW5kbGluZy4gIE15IHVuZGVyc3RhbmRpbmcg
aXMgdGhhdCBwYW5pYygpIHJ1bnMgd2l0aCBvbmx5IG9uZQo+IG9wZXJhdGlvbmFsIENQVSBpbiB0
aGUgc3lzdGVtLiAgSSB0aGluayB0aGVyZSBpcyBvdGhlciBjb2RlIChsaWtlCj4gcHJpbnRrKSB0
aGF0IGFsc28gcmVsaWVzIG9uIHRoaXMgYXNzdW1wdGlvbi4gIFNlZSBidXN0X3NwaW5sb2Nrcygp
IGFuZAo+IG9vcHNfaW5fcHJvZ3Jlc3MuCj4gCj4gSSBjYW4ndCBmaW5kIGFueXRoaW5nIHRoYXQg
c2F5cyB0aGlzLCBidXQgaXQncyBvYnZpb3VzIHRoYXQgYm90aCBwYW5pYygpCj4gYW5kIG1jZV9w
YW5pYygpIG1ha2Ugc3BlY2lhbCBlZmZvcnRzIHRvIGVuc3VyZSB0aGlzLgo+IAo+IFRoZSB0cm91
YmxlIGlzIHRoYXQgaWYgeW91IGFkZCB0aGUgc3BpbmxvY2tzIGluIHRoZSBJUE1JIHBhbmljIGhh
bmRsZXIsCj4gaWYgYW4gZXhjZXB0aW9uIG9jY3VycyB3aGlsZSBhIENQVSBob2xkcyB0aGF0IHNw
aW5sb2NrLCB0aGUgc3lzdGVtIHdpbGwKPiBoYW5nIGZvcmV2ZXIsIG5vdCBqdXN0IGZvciAzMDAw
IHNlY29uZHMuICBUaGUgdHJvdWJsZSBpcywgSSBkb24ndCBrbm93Cj4gb2YgYSBnb29kIHNvbHV0
aW9uIGJlc2lkZXMgbWFraW5nIHRoZSBwYW5pYyBoYW5kaW5nIHdvcmsgbGlrZSBJIHRoaW5rIGl0
Cj4gc2hvdWxkLgo+IAo+IFRoYW5rcywKPiAKPiAtY29yZXkKPiAKCkhpLCBjb3JleQoKSXQgaXMg
Z3Vlc3NlZCB0aGF0IHRoZXJlIG1heSBiZSBhIGNwdSBleGVjdXRpbmcgdGhlIHBhbmljIHByb2Nl
c3MsIGFuZCAKb3RoZXIgY3B1cyBhcmUgbm90IGluIHRoZSBzdGF0ZSBvZiBzdG9wcGluZyB0aGUg
Y29yZSwgbm90IGp1c3QgdGhlIAptY2VfcGFuaWMgc2NlbmFyaW8uCgpTbyBpcyBpdCBwb3NzaWJs
ZSB0byB1c2Ugc3Bpbl90cnlsb2NrX2lycXNhdmUgaW4gdGhlIHBhbmljIHJvdXRpbmUgPwoKQmVz
dCByZWdhcmRzLAoKV3UgQm8KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
