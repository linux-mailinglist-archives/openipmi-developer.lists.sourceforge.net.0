Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 076E57E7105
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Nov 2023 19:00:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r19Kd-0003EA-HW;
	Thu, 09 Nov 2023 18:00:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1r19Kb-0003E3-Ti
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 18:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ezuoJq6pNEXGp2eA7H/uDzKJ3yho8OQ2mIK7dVTUvyE=; b=foOqojMTA3rn8liG5lzBUbYDLv
 ihrsadHQu13GE/zIxAEtofoD82hPYK4EhtspsHGtM0MS3Pi7PpNY3Ikdu4Di/h+ZLv0+uB9XsWxwF
 WArGaIq6pfroB0GwmnKLpwLjhVOEthwhEKh3CCvjJx1kjBp1lj8kVabqQRCQXdtmRxaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ezuoJq6pNEXGp2eA7H/uDzKJ3yho8OQ2mIK7dVTUvyE=; b=DzD3TcSlxTd0wBoH4LnlTz5f1P
 vpx6szEWe9YqfLyyi6f9Coc8ecNGiplScs5++ZP8Z7SXN4Gcxvgunj/8TjXFkT7yywKnqsT3Kct52
 iWNmM1mDMQH7fC9mDogHMj0Jja6eWDutq+df76cK1MqqPqahO2NVUXirss1PUreDQ268=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r19KX-001IPv-8X for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 18:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1699552825;
 bh=ezuoJq6pNEXGp2eA7H/uDzKJ3yho8OQ2mIK7dVTUvyE=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=GxJjGb3en2JxYP5f3FyRFY9IID+dHRhHSWjPKmWzd3Wb7gaYNLHtpNPoIlIxcAIpJ
 B4W6VpWQnRfiq9XFy3J0Fma0RiJXtWBoZSwhPbUAnjl8cTI2F7/JEurH4x+WUUYkrZ
 bkdnGBdF/FikOIaEzuP7AVmespbe3dihwfOqqZCU=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
In-Reply-To: <ZU0GghPIh0CajfEj@mail.minyard.net>
Date: Thu, 9 Nov 2023 19:00:04 +0100
Message-Id: <17F6EFCD-04EF-43C8-8B4A-3B12D6EDFB86@flyingcircus.io>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
 <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
 <ZRujFdwLxQVVfQj7@mail.minyard.net>
 <3B168EB2-55E5-4F40-BAEC-A1861CDBE2D3@flyingcircus.io>
 <ZUzjnK+EVUmHbVOE@mail.minyard.net>
 <18E8EDB0-F910-4688-B33A-62A1804CEFAB@flyingcircus.io>
 <ZU0GghPIh0CajfEj@mail.minyard.net>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > On 9. Nov 2023, at 17:19, Corey Minyard <minyard@acm.org>
    wrote: > >> >> I saw a lot of work around kprint() happened in and after
   5.15 so I guess upgrading to 5.15 shouldn’t hurt in any case. >> [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: flyingcircus.io]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r19KX-001IPv-8X
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

Cgo+IE9uIDkuIE5vdiAyMDIzLCBhdCAxNzoxOSwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20u
b3JnPiB3cm90ZToKPiAKPj4gCj4+IEkgc2F3IGEgbG90IG9mIHdvcmsgYXJvdW5kIGtwcmludCgp
IGhhcHBlbmVkIGluIGFuZCBhZnRlciA1LjE1IHNvIEkgZ3Vlc3MgdXBncmFkaW5nIHRvIDUuMTUg
c2hvdWxkbuKAmXQgaHVydCBpbiBhbnkgY2FzZS4KPj4gCj4+IE5vdCBoYXZpbmcgYSByZXByb2R1
Y2VyIGlzIHRoZSByZWFsIGJ1bW1lci4KPj4gCj4+IEkgd2FzIGFsc28gd29uZGVyaW5nIHdoZXRo
ZXIgdXNpbmcgb3RoZXIgdXRpbGl0aWVzIGxpa2Ugc3RvcmluZyBrZXJuZWwgY3Jhc2ggZHVtcHMg
b24gc3dhcCB3b3VsZCBiZSBhIGdvb2QgYXZlbnVlLiBUaGUgb25seSBpc3N1ZSBoZXJlIGJlaW5n
IHRoYXQgdGhpcyBpcyBhIEtWTS9RZW11IGhvc3Qgd2l0aCBsb3RzIG9mIFJBTSBhbmQgSSB0aGlu
ayBJIGRvbuKAmXQgaGF2ZSBlbm91Z2ggZGlzayBzcGFjZSB0byBjYXB0dXJlIGZ1bGwgc3lzdGVt
IG1lbW9yeSBkdW1wcyDigKYgCj4gCj4gWW91IG1pZ2h0IGJlIHN1cnByaXNlZCwgaXQgaXMgcHJv
YmFibHkgc21hbGxlciB0aGFuIHlvdSB0aGluay4KCkNvbnNpZGVyIG1lIGludGVyZXN0ZWQg4oCm
IAoKPiBBY3R1YWxseSwgSSdtIGNvbmZ1c2luZyB0aGlzIHdpdGggYW5vdGhlciBpc3N1ZSBkZWFs
aW5nIHdpdGggcmVhbCB0aW1lCj4gbGF0ZW5jaWVzIGFuZCBwcmludGsuICBQcmVlbXB0IHRyYWNp
bmcgd29uJ3QgaGVscCB5b3VyIGlzc3VlLgo+IAo+IEEgYXNzdW1lIHlvdSBhcmUgdXNpbmcgdGhl
ICJub3JtYWwiIE5NSSB3YXRjaGRvZyBhbmQgaXQncyBub3QKPiB0cmlnZ2VycmluZy4gIEl0IHNo
b3VsZCBiZSBvbiBieSBkZWZhdWx0LiAgWW91IGNhbiBsb29rIGluCj4gL3Byb2Mvc3lzL2tlbmVs
L25taV93YXRjaGRvZyB0byBzZWUuCgpIbW0g4oCmIAoKIyBjYXQgL3Byb2Mvc3lzL2tlcm5lbC9u
bWlfd2F0Y2hkb2cKY2F0OiAvcHJvYy9zeXMva2VybmVsL25taV93YXRjaGRvZzogTm8gc3VjaCBm
aWxlIG9yIGRpcmVjdG9yeQoKSeKAmW0gbm90IHN1cmUgd2hldGhlciBvdXIga2VybmVsIGNvbmZp
ZyBpcyBtaXNzaW5nIHNvbWV0aGluZyDigKYgY29uZmlnLmd6IHNob3dzIG1lOgoKcm9vdEBreWxl
MzQgW3Byb2RdIC4uLi9zeXMva2VybmVsICMgemdyZXAgTk1JIC9wcm9jL2NvbmZpZy5negpDT05G
SUdfUFJJTlRLX05NST15CkNPTkZJR19IQVZFX0FDUElfQVBFSV9OTUk9eQpDT05GSUdfT1BST0ZJ
TEVfTk1JX1RJTUVSPXkKQ09ORklHX0hBVkVfTk1JPXkKQ09ORklHX0hBVkVfUEVSRl9FVkVOVFNf
Tk1JPXkKQ09ORklHX0FSQ0hfSEFWRV9OTUlfU0FGRV9DTVBYQ0hHPXkKQ09ORklHX0hQV0RUX05N
SV9ERUNPRElORz15CkNPTkZJR19UUkFDRV9JUlFGTEFHU19OTUlfU1VQUE9SVD15CiMgQ09ORklH
X0RFQlVHX05NSV9TRUxGVEVTVCBpcyBub3Qgc2V0Cgpyb290QGt5bGUzNCBbcHJvZF0gLi4uL3N5
cy9rZXJuZWwgIyB6Z3JlcCBXQVRDSCAvcHJvYy9jb25maWcuZ3oKIyBDT05GSUdfV0FUQ0hfUVVF
VUUgaXMgbm90IHNldApDT05GSUdfQ0xPQ0tTT1VSQ0VfV0FUQ0hET0c9eQpDT05GSUdfQUNQSV9X
QVRDSERPRz15CkNPTkZJR19JUE1JX1dBVENIRE9HPW0KQ09ORklHX1dBVENIRE9HPXkKQ09ORklH
X1dBVENIRE9HX0NPUkU9bQojIENPTkZJR19XQVRDSERPR19OT1dBWU9VVCBpcyBub3Qgc2V0CkNP
TkZJR19XQVRDSERPR19IQU5ETEVfQk9PVF9FTkFCTEVEPXkKQ09ORklHX1dBVENIRE9HX09QRU5f
VElNRU9VVD0wCiMgQ09ORklHX1dBVENIRE9HX1NZU0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfV0FU
Q0hET0dfUFJFVElNRU9VVF9HT1YgaXMgbm90IHNldApDT05GSUdfU09GVF9XQVRDSERPRz1tCkNP
TkZJR19EQTkwNjNfV0FUQ0hET0c9bQpDT05GSUdfREE5MDYyX1dBVENIRE9HPW0KQ09ORklHX01F
TkYyMUJNQ19XQVRDSERPRz1tCkNPTkZJR19NRU5aMDY5X1dBVENIRE9HPW0KQ09ORklHX1hJTElO
WF9XQVRDSERPRz1tCkNPTkZJR19aSUlSQVZFX1dBVENIRE9HPW0KQ09ORklHX1JBVkVfU1BfV0FU
Q0hET0c9bQpDT05GSUdfQ0FERU5DRV9XQVRDSERPRz1tCkNPTkZJR19EV19XQVRDSERPRz1tCkNP
TkZJR19NQVg2M1hYX1dBVENIRE9HPW0KQ09ORklHX1JFVFVfV0FUQ0hET0c9bQpDT05GSUdfU0JD
X0ZJVFBDMl9XQVRDSERPRz1tCkNPTkZJR19IUF9XQVRDSERPRz1tCkNPTkZJR19TQkNfRVBYX0Mz
X1dBVENIRE9HPW0KQ09ORklHX1BDSVBDV0FUQ0hET0c9bQpDT05GSUdfVVNCUENXQVRDSERPRz1t
CkNPTkZJR19DT01FRElfQURESV9XQVRDSERPRz1tCiMgQ09ORklHX1dRX1dBVENIRE9HIGlzIG5v
dCBzZXQKCiMgc3lzY3RsIC1hIHwgZ3JlcCBubWkKa2VybmVsLnBhbmljX29uX2lvX25taSA9IDAK
a2VybmVsLnBhbmljX29uX3VucmVjb3ZlcmVkX25taSA9IDAKa2VybmVsLnVua25vd25fbm1pX3Bh
bmljID0gMAoKVGhpcyBpcyBhbiBhcmVhIEkgaGF2ZW7igJl0IHRvdWNoZWQgYmVmb3JlLiBJ4oCZ
bSBhIGJpdCBjb25mdXNlZCB0aGF0IHRoZSBmaWxlIGRvZXNu4oCZdCBleGlzdC4gVGhlIGludGVy
bmV0IHRhbGtzIGFib3V0IGNvcnJlc3BvbmRpbmcgc3lzY3RsIHNldHRpbmdzIHdoaWNoIGFsc28g
ZG8gbm90IGV4aXN0IOKApiAKCknigJltIHNlZWluZyBhIG51bWJlciBvZiBvcHRpb25zIHRvIGNv
bnRyb2wgd2hldGhlciBvdGhlciBzaXR1YXRpb25zIHNob3VsZCByZXN1bHQgaW4gcGFuaWNzIHdo
aWNoIGFwcGFyZW50bHkgd2UgZG9u4oCZdCBzZXQgYW5kIGFyZW7igJl0IHNldCBieSBkZWZhdWx0
OgoKcm9vdEBreWxlMzQgW3Byb2RdIC4uLi9zeXMva2VybmVsICMgc3lzY3RsIC1hIHwgZ3JlcCBw
YW5pYwpmcy54ZnMucGFuaWNfbWFzayA9IDAKa2VybmVsLmh1bmdfdGFza19wYW5pYyA9IDAKa2Vy
bmVsLnBhbmljID0gMQprZXJuZWwucGFuaWNfb25faW9fbm1pID0gMAprZXJuZWwucGFuaWNfb25f
b29wcyA9IDAKa2VybmVsLnBhbmljX29uX3JjdV9zdGFsbCA9IDAKa2VybmVsLnBhbmljX29uX3Vu
cmVjb3ZlcmVkX25taSA9IDAKa2VybmVsLnBhbmljX29uX3dhcm4gPSAwCmtlcm5lbC5wYW5pY19w
cmludCA9IDAKa2VybmVsLnVua25vd25fbm1pX3BhbmljID0gMAp2bS5wYW5pY19vbl9vb20gPSAw
CgpBbmQgc28sIGxvb2tpbmcgYXJvdW5kIEkgZmluZDoKCkNPTkZJR19IQVZFX0hBUkRMT0NLVVBf
REVURUNUT1JfUEVSRj15CiMgQ09ORklHX1NPRlRMT0NLVVBfREVURUNUT1IgaXMgbm90IHNldApD
T05GSUdfSEFSRExPQ0tVUF9DSEVDS19USU1FU1RBTVA9eQojIENPTkZJR19IQVJETE9DS1VQX0RF
VEVDVE9SIGlzIG5vdCBzZXQKQ09ORklHX1RFU1RfTE9DS1VQPW0KClJlYWRpbmcgdGhlIGtlcm5l
bCBkb2NzIGFib3V0IHRoaXMgc2VlbXMgbGlrZSB0aGlzIG1pZ2h0IGJlIGFuIG92ZXJzaWdodCBm
cm9tIG91ciBzaWRlIGFuZCB3ZSBtaWdodCBiZSBleHBlcmllbmNpbmcgbG9ja3VwcyB0aGF0IGRv
IG5vdCByZXN1bHQgaW4gcGFuaWNzICh3aGljaCBpbiB0dXJuIHRodXMgd29u4oCZdCBzaG93IHVw
IGluIHRoZSBTRUwpLgoKSSBndWVzcyB3ZeKAmXZlIGZvdW5kIHNvbWUgbW9yZSBob21ld29yayB3
ZSBjYW4gZG8gb24gb3VyIHNpZGUgdG8gZ2V0IGJldHRlciB2aXNpYmlsaXR5LgoKQUZBSUNUIEkg
Y2FuIGVhc2lseSB0cmlnZ2VyIGFuIE5NSSBmcm9tIGlwbWkgYW5kIHRoZW4gdmVyaWZ5IHRoYXQg
dGhpcyBjYXVzZXMgcHJvcGVyIFNFTCBlbnRyaWVzIOKApiAKCihJbiBhbnkgY2FzZSwgdGhlIE5N
SSBsb2NrdXAgaXNu4oCZdCAxMDAlIGNvbnZpbmNpbmcgYXMgaXQgY29tcGxldGVseSBzdG9wcGVk
IGhhcHBlbmluZyBzaW5jZSB3ZSBhdHRhY2hlZCB0aGUgU09McyDigKYpCgo+IEkgd2FzIHdvcmtp
bmcgd2l0aCBhIGN1c3RvbWVyIG9mIG91ciBjb21wYW5pZXMgb24gc29tZXRoaW5nIHNpbWlsYXIs
IGEKPiB3YXRjaGRvZyByZXNldCB3aXRoIG5vdCBkaXNjZXJuYWJsZSByZWFzb24uICBUaGV5IGNv
dWxkbid0IHVzZSB0aGUKPiBzdGFuZGFyZCBOTUkgd2F0Y2hkb2csIHNvIHdlIHN3aXRjaGVkIHRv
IHVzaW5nIGFuIE5NSSB3YXRjaCBmcm9tIHRoZQo+IEJNQy4gIFNldCB0aGUgcHJlYWN0aW9uIHRv
IG5taSBhbmQgdGhlIHByZW9wIHRvIHBhbmljLgo+IAo+IFdpdGggdGhhdCwgeW91IGNhbiB0YWtl
IGEga2VybmVsIGNvcmVkdW1wLiAgWW91IGdlbmVyYWxseSBvbmx5IHRha2UgYQo+IGNvcmVkdW1w
IG9mIGtlcm5lbCBtZW1vcnkgKHdpdGhvdXQgYnVmZmVycyksIHNvIGl0J3Mgbm90IGdlbmVyYWxs
eSBhCj4gaHVnZSBhbW91bnQgb2YgZGlzayBzcGFjZSwgYW5kIGl0J3MgY29tcHJlc3NlZC4KPiAK
PiBPZiBjb3Vyc2UsIHRoZW4geW91IGhhdmUgdG8gYW5hbHl6ZSBhIGNvcmVkdW1wLCB3aGljaCBo
YXMgaXRzIG93bgo+IGRpZmZpY3VsdGllcyA6LSguCgpUaGFua3MsIHRoYXQgZG9lcyBzb3VuZCBt
b3JlIGZlYXNpYmxlIHRoYW4gZHVtcGluZyBhbGwgYXBwbGljYXRpb24gbWVtb3J5IHN0YXRlLiBB
bmQgeWVzLCBkdW1wcyBhcmUgYSBoYXNzbGUsIHNvIEnigJlsbCBpbnZlc3QgaW4gb3VyIGhvbWV3
b3JrIHRvIGdldCB0aGUgTk1JIHN0dWZmIHdvcmtpbmcgZmlyc3QuCgpIdWdzLApDaHJpc3RpYW4K
Ci0tIApDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIx
OTQwMSAwCkZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8v
Zmx5aW5nY2lyY3VzLmlvCkxlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChTYWFs
ZSkgwrcgRGV1dHNjaGxhbmQKSFIgU3RlbmRhbCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhy
ZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2RuaWNrCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9w
ZXIK
