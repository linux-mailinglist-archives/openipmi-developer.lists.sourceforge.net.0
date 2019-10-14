Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 080B7D616B
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Oct 2019 13:35:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iJyd5-0002TH-2G; Mon, 14 Oct 2019 11:35:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1iJyd3-0002T9-Fh
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 11:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cFgJP1+fI7xtiEbMm6wJ/Vyl8fJ5agt9Jkt3EIsWYWU=; b=BWUI0nQU2YjdT73RD9cxEoSjKF
 YKu2hPyevhbXFPocyumUmHOnAQR/uTLjK3QyFI95h1O5xGI7/GVTEq+TTfd01pT21TvnTo7RpLyj0
 H2Ql8+aQIv2Otz5vGMOV0gnVsFAoQZu/b1W/dmg0jywoqDgWxPNaWf7o/g3G4Ek5oPsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cFgJP1+fI7xtiEbMm6wJ/Vyl8fJ5agt9Jkt3EIsWYWU=; b=N072Em2Vh2/ZoG9PSuWYGNbvYX
 lLIHG9iu8/0IuDZXaP63inQD65Dc7+L4gyCs2EkVg6JSttvWAhFEz0BxVnmjiJNNUse6cGV4u+MN0
 kLgYZRsGcmWKrLazcqlSJo45xyRjaUtyuIobw3BZC6tzWxCmNLvCnpw9gSZIxrIMjEZE=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iJycu-008dLy-Sd
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 11:35:09 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9BD91316D797;
 Mon, 14 Oct 2019 11:34:52 +0000 (UTC)
Received: from [10.3.116.65] (ovpn-116-65.phx2.redhat.com [10.3.116.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2948D5C1D4;
 Mon, 14 Oct 2019 11:34:51 +0000 (UTC)
From: tony camuso <tcamuso@redhat.com>
To: minyard@acm.org
References: <cbf409f1-9055-5786-eae8-8fff422038be@redhat.com>
 <20191010131758.GB14172@t560>
 <41768c2f-6ef4-4215-2f5b-ea04328e7165@redhat.com>
Message-ID: <4ade906b-32f3-137c-49d1-dceb942fcade@redhat.com>
Date: Mon, 14 Oct 2019 07:34:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <41768c2f-6ef4-4215-2f5b-ea04328e7165@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 14 Oct 2019 11:34:53 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1iJycu-008dLy-Sd
Subject: Re: [Openipmi-developer] ipmi kmods can be unloaded even when
 userspace is accessing /dev/ipmi0
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
Cc: cminyard@mvista.com, openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMTAvMTAvMTkgMjowMSBQTSwgdG9ueSBjYW11c28gd3JvdGU6Cj4gT24gMTAvMTAvMTkgOTox
NyBBTSwgQ29yZXkgTWlueWFyZCB3cm90ZToKPj4gT24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDE6
Mjc6MjhQTSAtMDQwMCwgdG9ueSBjYW11c28gd3JvdGU6Cj4+Pgo+Pj4gT25lIG9mIG91ciB2ZW5k
b3JzIHJlcG9ydHMgdGhhdCB0aGUgZm9sbG93aW5nIGNvbW1pdCAuLi4KPj4+Cj4+PiBjb21taXQg
ZTg2ZWUyZDQ0YjQ0MDU2MjQzZGExN2MxMjBhZDI1ODcxN2NlZGY5Ygo+Pj4gQXV0aG9yOiBDb3Jl
eSBNaW55YXJkIDxjbWlueWFyZEBtdmlzdGEuY29tPgo+Pj4gRGF0ZTrCoMKgIFRodSBBcHIgNSAy
MjowNTowNCAyMDE4IC0wNTAwCj4+Pgo+Pj4gwqDCoMKgwqAgaXBtaTogUmV3b3JrIGxvY2tpbmcg
YW5kIHNodXRkb3duIGZvciBob3QgcmVtb3ZlCj4+PiDCoMKgwqDCoCBUbyBoYW5kbGUgaG90IHJl
bW92ZSBvZiBpbnRlcmZhY2VzLCBhIGxvdCBvZiByZXdvcmsgaGFkIHRvIGJlCj4+PiDCoMKgwqDC
oCBkb25lIHRvIHRoZSBsb2NraW5nLsKgIFNldmVyYWwgdGhpbmdzIHdlcmUgc3dpdGNoZWQgb3Zl
ciB0byBzcmN1Cj4+PiDCoMKgwqDCoCBhbmQgc2h1dGRvd24gZm9yIHVzZXJzIGFuZCBpbnRlcmZh
Y2VzIHdhcyBhZGRlZCBmb3IgY2xlYW5lcgo+Pj4gwqDCoMKgwqAgc2h1dGRvd24uCj4+PiDCoMKg
wqDCoCBTaWduZWQtb2ZmLWJ5OiBDb3JleSBNaW55YXJkIDxjbWlueWFyZEBtdmlzdGEuY29tPgo+
Pj4KPj4+IC4uLiBhcHBlYXJzIHRvIGhhdmUgbWFkZSBpdCBwb3NzaWJsZSB0byB1bmxvYWQgaXBt
aSBrbW9kcyB3aGVuIHVzZXJzcGFjZQo+Pj4gaXMgYWNjZXNzaW5nIC9kZXYvaXBtaTAKPj4+Cj4+
PiBJcyB0aGlzIGFuIGludGVuZGVkIGJlaGF2aW9yPwo+Pgo+PiBIbW0uwqAgSXQga2luZCBvZiB3
YXMsIHlvdSBzaG91bGQgYmUgYWJsZSB0byB1bmxvYWQgaXBtaV9zaSBvciBpcG1pX3NzaWYsCj4+
IGJ1dCBub3QgaXBtaV9tc2doYW5kbGVyIG9yIGlwbWlfZGV2aW50Zi7CoCBJZiBhIHByb2dyYW0g
aXMgdXNpbmcgdGhlCj4+IGRldmljZSwgaXQgd2lsbCBqdXN0IGdldCBlcnJvcnMuCj4+Cj4+IFRo
aXMgd2FzIGFsbCBhZGRlZCBiZWNhdXNlIG9mIGRldmljZXMgdGhhdCBjb3VsZCBiZSBkeW5hbWlj
YWxseSByZW1vdmVkCj4+IHdpdGhvdXQgd2FybmluZy7CoCBUaGUgYmVoYXZpb3IgeW91IGFyZSBy
ZWZlcmVuY2luZyBpcyBzb3J0IG9mIGEgc2lkZQo+PiBlZmZlY3Qgb2YgdGhhdDsgaXQgd291bGQg
aGF2ZSB0YWtlbiBzb21lIGV4dHJhIGNvZGUgdG8ga2VlcCB0aGUgbW9kdWxlCj4+IGZyb20gdW5s
b2FkLCBhbmQgbXkgYXNzdW1wdGlvbiB3YXMgdGhhdCBhbnlvbmUgdW5sb2FkaW5nIGEgbW9kdWxl
Cj4+IGluZGVuZGVkIHRoaXMuCj4+Cj4+IElmIHRoaXMgaXMgY2F1c2luZyBhIHByb2JsZW0sIGl0
IGNhbiBiZSBtb2RpZmllZC4KPj4KPj4gLWNvcmV5Cj4+Cj4gCj4gVGhhbmtzLCBDb3JleS4gSSds
bCBjaGVjayB3aXRoIHRoZSB2ZW5kb3IuCgpWZW5kb3IgaXMgYXNraW5nIGZvciBhbiBpcG1pIGhv
dC1wbHVnIHNwZWMuIEkgY291bGRuJ3QgZmluZCBpdCBpbiB0aGUgMi4wIHNwZWMuClRoZXkgd2ls
bCBhZGFwdCBpZiB0aGVyZSBpcyBhIHNwZWMuCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApP
cGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
