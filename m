Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB1D7E6DB4
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Nov 2023 16:41:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r17A2-0008Hj-U9;
	Thu, 09 Nov 2023 15:41:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1r17A1-0008Hc-HZ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 15:41:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/+K2QfBydlGLLCEcdH6Nbqay6FfkC4a8/W0Ivxzb+m4=; b=UsUZhPqHiCVMLQU/5AJpN0JYnh
 Ya4S5hHiUlxUnZh+9M5wGZdwpnLP6urncdAmysAQn7Xqf/wuPoAZNMRjn0qhjAijDnsiIkNOQ1xvS
 2KiSbBYnpynh86swEcPbGtk+sYcAfd+tEsPD2JyvDTtw+2hsFb35HPjeI9WK/SX1z8F4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/+K2QfBydlGLLCEcdH6Nbqay6FfkC4a8/W0Ivxzb+m4=; b=T0J25TEPI5ti7a97d1AzDaig0r
 YpB6e41ZqO2okfSNSVZjNRqqvCBVzDC+xGFnQVT7CP/INJD9Yzfr4g7v32mofL6NJv/am/m67l0d0
 Fs1sXF925il3GJdbAWearWf1D1gEx8KBm7ggzYwbj409W68jCTqKYzQxlhrXiR/n5ToQ=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r179x-0017x9-8j for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 15:41:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1699544480;
 bh=/+K2QfBydlGLLCEcdH6Nbqay6FfkC4a8/W0Ivxzb+m4=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=lzRH3uwXzUaOHS4yC5BSz3UNFv8fSXxhs2wplAtIIqoZMRflLjOIdIJaJ415RkpJP
 gCKQCyZKDqMWjV5kDnaisojU0PQVmAc5vaiMcE3vZA5RwaKs118R3Mt8cacjGOcik6
 mnEyPFpkzAUuSO+PkRJKDoXdBrBCSkDsmXbAjidQ=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
In-Reply-To: <ZUzjnK+EVUmHbVOE@mail.minyard.net>
Date: Thu, 9 Nov 2023 16:41:00 +0100
Message-Id: <18E8EDB0-F910-4688-B33A-62A1804CEFAB@flyingcircus.io>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
 <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
 <ZRujFdwLxQVVfQj7@mail.minyard.net>
 <3B168EB2-55E5-4F40-BAEC-A1861CDBE2D3@flyingcircus.io>
 <ZUzjnK+EVUmHbVOE@mail.minyard.net>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > On 9. Nov 2023, at 14:50, Corey Minyard <minyard@acm.org>
 wrote: > > It's 09c5ba0aa2fc "printk: add kthread console printers" and some
 > others. It's in 5.19, so it was later than I thought. Interesting. I can
 see it merged but then also reverted AFAICT before the 5.19 release. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flyingcircus.io]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r179x-0017x9-8j
Subject: Re: [Openipmi-developer] SOL via syslog?
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Cj4gT24gOS4gTm92IDIwMjMsIGF0IDE0OjUwLCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5v
cmc+IHdyb3RlOgo+IAo+IEl0J3MgMDljNWJhMGFhMmZjICJwcmludGs6IGFkZCBrdGhyZWFkIGNv
bnNvbGUgcHJpbnRlcnMiIGFuZCBzb21lCj4gb3RoZXJzLiAgSXQncyBpbiA1LjE5LCBzbyBpdCB3
YXMgbGF0ZXIgdGhhbiBJIHRob3VnaHQuCgpJbnRlcmVzdGluZy4gSSBjYW4gc2VlIGl0IG1lcmdl
ZCBidXQgdGhlbiBhbHNvIHJldmVydGVkIEFGQUlDVCBiZWZvcmUgdGhlIDUuMTkgcmVsZWFzZS4K
Ckkgc2F3IGEgbG90IG9mIHdvcmsgYXJvdW5kIGtwcmludCgpIGhhcHBlbmVkIGluIGFuZCBhZnRl
ciA1LjE1IHNvIEkgZ3Vlc3MgdXBncmFkaW5nIHRvIDUuMTUgc2hvdWxkbuKAmXQgaHVydCBpbiBh
bnkgY2FzZS4KCk5vdCBoYXZpbmcgYSByZXByb2R1Y2VyIGlzIHRoZSByZWFsIGJ1bW1lci4KCkkg
d2FzIGFsc28gd29uZGVyaW5nIHdoZXRoZXIgdXNpbmcgb3RoZXIgdXRpbGl0aWVzIGxpa2Ugc3Rv
cmluZyBrZXJuZWwgY3Jhc2ggZHVtcHMgb24gc3dhcCB3b3VsZCBiZSBhIGdvb2QgYXZlbnVlLiBU
aGUgb25seSBpc3N1ZSBoZXJlIGJlaW5nIHRoYXQgdGhpcyBpcyBhIEtWTS9RZW11IGhvc3Qgd2l0
aCBsb3RzIG9mIFJBTSBhbmQgSSB0aGluayBJIGRvbuKAmXQgaGF2ZSBlbm91Z2ggZGlzayBzcGFj
ZSB0byBjYXB0dXJlIGZ1bGwgc3lzdGVtIG1lbW9yeSBkdW1wcyDigKYgCgo+IEknbSBub3QgYmVp
bmcgYSBsb3Qgb2YgaGVscCBoZXJlLCBidXQgaG9wZWZ1bGx5IGl0IGNhbiBsZWFkIHlvdQo+IHNv
bWV3aGVyZSB5b3UgY2FuIGZpZ3VyZSB0aGlzIG91dC4gIFRoZXNlIGNhbiBiZSBoYXJkIHByb2Js
ZW1zIHRvCj4gdHJhY2sgZG93bi4KCkkgZ3Vlc3Mgd2XigJlyZSBib3RoIHByZXR0eSBibGluZCBo
ZXJlLiBJIGFwcHJlY2lhdGUgYW55IGFzc2lzdGFuY2UuIDopCgo+IEkgZG9uJ3QgcmVtZW1iZXIs
IGhhZCB5b3UgZG9uZSBhbnl0aGluZyB3aXRoIHRoZSBrZXJuZWwgcHJlZW1wdCB0cmFjaW5nPwo+
IFRoYXQgY2FuIGJlIHVzZWZ1bCBmb3IgdHJhY2tpbmcgZG93biBsb25nIHByZWVtcHQgb2ZmIHRp
bWVzLgoKVWhtIG5vLCBub3QgeWV0LiBBbnkgcG9pbnRlcnMgd2hlcmUgdG8gc3RhcnQgYW5kIGhv
dyB0aGlzIHJlbGF0ZXMgdG8gcG90ZW50aWFsIGtwcmludCBidWZmZXJzPwoKTGllYmUgR3LDvMOf
ZSwKQ2hyaXN0aWFuIFRoZXVuZQoKLS0gCkNocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2ly
Y3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRp
b25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KTGVpcHppZ2VyIFN0ci4gNzAvNzEg
wrcgMDYxMDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZApIUiBTdGVuZGFsIEhSQiAyMTE2
OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3Jv
ZG5pY2sKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
