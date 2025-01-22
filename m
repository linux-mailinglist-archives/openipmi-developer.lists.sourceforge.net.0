Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C720A192EF
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Jan 2025 14:50:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tab89-0006EC-Ku;
	Wed, 22 Jan 2025 13:50:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <maxime.chevallier@bootlin.com>) id 1taakx-0001Ok-Q2
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 13:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f79sgirNquVrPTw/4uMnu5O9aV6JookXhGIW+QW7GnE=; b=OfINL18YxQ5emZFLOzscUQoKSb
 X51lFmMxmx+qoySuuaqaHbmSCYNHVEaX3I2+9duPTwxnzWcA28aTqMKXUjQvoYDXybA9TiGZnc++w
 yevICkvE1yxTFxR6Xr2WCbJD5RdYHMssCrb13dj63Up3kXfm1AIyowzq1zfsupzcaMpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f79sgirNquVrPTw/4uMnu5O9aV6JookXhGIW+QW7GnE=; b=JTI102Gein+2w19FDmZKA5iC9a
 8/zNx/b63eCR1TSwEJw7jU5VkA5W0kTgS9mRwWNuJIOoKEOFy0eoOm7OZZsVZo7SS6e84YfIfL+5D
 eGPeh4nGqEsVKdSXdmxKK4cGpfSJyYi3mywzfIMkoK/h0y2fd4Sm03ozJZL++TXs7sBU=;
Received: from mslow1.mail.gandi.net ([217.70.178.240])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1taakv-0003as-38 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 13:26:55 +0000
Received: from relay1-d.mail.gandi.net (unknown [IPv6:2001:4b98:dc4:8::221])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 1D91FC2C1A
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Jan 2025 13:07:38 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C05CB24000C;
 Wed, 22 Jan 2025 13:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1737551251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f79sgirNquVrPTw/4uMnu5O9aV6JookXhGIW+QW7GnE=;
 b=byqfqMN1GFCpLrLEJsABHWp1y2JYKg/QAtE0Q6M6RHS7TD+JZcgfWXNEIBC3tb6qNsf/Ei
 zYP76ooYhpJjiRdQAIApQwcemNQj7qhPx+UbX4paP5bHcsiQIFFq8+1ccgCPjDM8Ad0nmA
 pjCMbJCAowxj0vI/6PSX1qNAuGhMTbROkY/WAqVxBukmb2wzeaCDl5UvyJyDdX9UdSLIdl
 f4JfLC2H67dG36Rz2lto95ttWSFY4+IpcU8w7r96mfxYsAnkE2oRp61XjkA3OfEqYWq5Ik
 TOqcpPm14U/eo5UvyWk9tKi3qXHdRLOJzVClLQ09l7cuUt/ZwQCPD6JlRgDzTA==
Date: Wed, 22 Jan 2025 14:07:19 +0100
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20250122140719.5629ae57@fedora.home>
In-Reply-To: <0ee94fd3-d099-4d82-9ba8-eb1939450cc3@lunn.ch>
References: <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
 <81567190-a683-4542-a530-0fb419f5f9be@linux.ibm.com>
 <0ee94fd3-d099-4d82-9ba8-eb1939450cc3@lunn.ch>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: maxime.chevallier@bootlin.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Andrew, On Fri, 10 Jan 2025 16:38:18 +0100 Andrew Lunn
 <andrew@lunn.ch> wrote: > > Do we need updates on this description. It doesn't
 talk about external PCB > > level delays? > > > >
 https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/net/ethernet-co
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.240 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [217.70.178.240 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [217.70.178.240 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1taakv-0003as-38
X-Mailman-Approved-At: Wed, 22 Jan 2025 13:50:40 +0000
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiDlm57opoY6IFtQQVRDSCB2?=
 =?utf-8?q?2_05/10=5D_ARM=3A_dts=3A_aspeed=3A_system1=3A_Add_RGMII_support?=
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
From: Maxime Chevallier via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Chou <jacky_chou@aspeedtech.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ninad Palsule <ninad@linux.ibm.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "ratbert@faraday-tech.com" <ratbert@faraday-tech.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGVsbG8gQW5kcmV3LAoKT24gRnJpLCAxMCBKYW4gMjAyNSAxNjozODoxOCArMDEwMApBbmRyZXcg
THVubiA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgoKPiA+IERvIHdlIG5lZWQgdXBkYXRlcyBvbiB0
aGlzIGRlc2NyaXB0aW9uLiBJdCBkb2Vzbid0IHRhbGsgYWJvdXQgZXh0ZXJuYWwgUENCCj4gPiBs
ZXZlbCBkZWxheXM/Cj4gPiAKPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9i
bG9iL21hc3Rlci9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0
LWNvbnRyb2xsZXIueWFtbCNMNzctTDkwCj4gPiAKPiA+IFRoaXMgaXMgd2hhdCB5b3UgZXhwbGFp
bmVkOgo+ID4gCj4gPiBNQUMgZHJpdmVyIHJlYWRzIGZvbGxvd2luZyBwaHktbW9kZSBmcm9tIGRl
dmljZSB0cmVlLiA5NSUgb2YgbWFjIGRyaXZlcgo+ID4gZGlyZWN0bHkKPiA+IMKgcGFzcyBpdCB0
byBQSFkgdGhyb3VnaCBwaHlfY29ubmVjdC4KPiA+IAo+ID4gcmdtaWkgLSBQQ0IgaGFzIGxvbmcg
Y2xvY2sgbGluZXMgc28gZGVsYXkgaXMgYWRkZWQgYnkgUENCCj4gPiDCoMKgwqDCoMKgwqDCoCBP
biB0aGlzIG1vZGUgUEhZIGRvZXMgbm90aGluZy4KPiA+IHJnbWlpLWlkIC0gUENCIGRvZXNuJ3Qg
YWRkIGRlbGF5LiBFaXRoZXIgTUFDIG9yIFBIWSBuZWVkcyB0byBhZGQgdGhlIGRlbGF5Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBBZGQgZGVsYXlzIGluIGJvdGggZGlyZWN0aW9ucy4gU29tZSBQ
SFkgbWF5IG5vdCBhZGQgZGVsYXkgaW4gdGhhdAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2Fz
ZSBNQUMgbmVlZHMgdG8gYWRkIHRoZSBkZWxheSBtYXNrIHJnbWlpLWlkIHRvIHJnbWlpLgo+ID4g
cmdtaWktcnhpZCAtIElmIHRoZXJlIGlzIGFuIGV4dHJhIGxvbmcgVFggY2xvY2sgbGluZSwgYnV0
IG5vdCBSWCBjbG9jaywKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB5b3Ugd291bGQgdXNl
IHJnbWlpLXJ4aWQKPiA+IHJnbWlpLXR4aWQgLSBXaGVuIHRoZXJlIGlzIGFuIGV4dHJhIGxvbmcg
UlggY2xvY2sgbGluZSBvbiB0aGUgUENCLCBidXQgbm90Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdGhlIFRYIGNsb2NrIGxpbmUsIHlvdSB3b3VsZCB1c2UgcmdtaWktdHhpZCAgCj4gCj4g
VGhlIGRvY3VtZW50YXRpb24gaXMgbm90IGdyZWF0LCB0aGF0IGhhcyBiZWVuIHNhaWQgYSBmZXcg
dGltZXMuICBXaGF0Cj4gaXMgZGVzY3JpYmVkIGhlcmUgaXMgdGhlIHZpZXcgZnJvbSB0aGUgUEhZ
LCB3aGljaCBpcyBub3QgaWRlYWwuCj4gCj4gICAgICAgIyBSWCBhbmQgVFggZGVsYXlzIGFyZSBh
ZGRlZCBieSB0aGUgTUFDIHdoZW4gcmVxdWlyZWQKPiAgICAgICAtIHJnbWlpCj4gCj4gRnJvbSB0
aGUgcGVyc3BlY3RpdmUgb2YgdGhlIFBIWSwgdGhpcyBtZWFucyBpdCBkb2VzIG5vdCBuZWVkIHRv
IGFkZAo+IGRlbGF5cywgYmVjYXVzZSB0aGUgTUFDIGhhcyBhZGRlZCB0aGUgZGVsYXlzLCBpZiBy
ZXF1aXJlZCwgZS5nLiB0aGUKPiBQQ0IgaGFzIG5vdCBhZGRlZCB0aGUgZGVsYXlzLgo+IAo+IFdl
IGhhdmUgdGhlIHByb2JsZW0gdGhhdCBEVCBpcyBzdXBwb3NlZCB0byBkZXNjcmliZSB0aGUKPiBo
YXJkd2FyZS4gU2F5aW5nIHRoZSBQSFkgc2hvdWxkIGFkZCB0aGUgZGVsYXlzLCBidXQgaWYgdGhl
IE1BQyBhZGRzCj4gdGhlIGRlbGF5cyBpdCBuZWVkcyB0byBtYXNrIHRoZSB2YWx1ZSBwYXNzZWQg
dG8gdGhlIFBIWSBkb2VzIG5vdAo+IGRlc2NyaWJlIHRoZSBoYXJkd2FyZSwgaXQgaXMgTGluaXgg
aW1wbGVtZW50YXRpb24gZGV0YWlscy4gVGhlIERUCj4gTWFpbnRhaW5lcnMgZG9uJ3Qgd2FudCB0
aGF0IGluIHRoZSBEVCBiaW5kaW5nIGJlY2F1c2Ugb3RoZXIgT1NlcyBtaWdodAo+IGRlY2lkZSB0
byBpbXBsZW1lbnQgdGhlIGRldGFpbHMgZGlmZmVyZW50bHkuCj4gCj4gU28geW91ciBkZXNjcmlw
dGlvbiBiZWNvbWVzOgo+IAo+IHJnbWlpICAgICAgLSBQQ0IgaGFzIGxvbmcgY2xvY2sgbGluZXMg
c28gZGVsYXlzIGFyZSBhZGRlZCBieSB0aGUgUENCCj4gcmdtaWktaWQgICAtIFBDQiBkb2Vzbid0
IGFkZCBkZWxheS4gRWl0aGVyIE1BQyBvciBQSFkgbmVlZHMgdG8gYWRkIHRoZSBkZWxheXMKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAgIGluIGJvdGggZGlyZWN0aW9ucy4KPiByZ21paS1yeGlkIC0g
VGhlcmUgaXMgYW4gZXh0cmEgbG9uZyBUWCBjbG9jayBsaW5lIG9uIHRoZSBQQ0IsIGJ1dCBub3Qg
dGhlIFJYIGNsb2NrLgo+IHJnbWlpLXR4aWQgLSBUaGVyZSBpcyBhbiBleHRyYSBsb25nIFJYIGNs
b2NrIGxpbmUgb24gdGhlIFBDQiwgYnV0IG5vdCB0aGUgVFggY2xvY2suCj4gCj4gSXQgaXMgY29y
cmVjdCwgYnV0IGxlYXZlcyBzbyBtdWNoIHVuc2FpZCBkZXZlbG9wZXJzIHdpbGwgc3RpbGwgZ2V0
IGl0Cj4gd3JvbmcuCgpJIG15c2VsZiBnb3QgaXQgd3JvbmcsIGFzIHRoZSBrZXJuZWwgZG9jIGV4
cGxpY2l0ZWx5IHNheXMgdGhhdCB0aGUgInJnbWlpIgpwaHktbW9kZSBpcyB0aGUgb25lIHRvIHVz
ZSB0byBnZXQgTUFDLXNpZGUgZGVsYXkgaW5zZXJ0aW9uLCB3aGVyZWFzIHRoZSB3YXkgSQp1bmRl
cnN0YW5kIGl0LCBtYWMtc2lkZSBkZWxheSBpbnNlcnRpb24gZG9lc24ndCByZWFsbHkgZGVwZW5k
IG9uIHRoZSBwaHktbW9kZQpwYXNzZWQgZnJvbSBEVC4gSWRlYWxseSB3ZSB3b3VsZCBldmVuIGNv
bnNpZGVyIHRoYXQgdGhlc2UgbWFjLXNpZGUgZGVsYXkKaW5zZXJ0aW9uIHdvdWxkIGhhdmUgdG8g
YmUgaWdub3JlZCBpbiBiYXNpYyAnUkdNSUknIG1vZGUsIGJ1dCBJIHRoaW5rIHRoYXQgd291bGQK
YnJlYWsgcXVpdGUgc29tZSBleGlzdGluZyBzZXR1cHMgPwoKQ2FuIHdlIGNvbnNpZGVyIGFuIHVw
ZGF0ZSBpbiB0aGUga2VybmVsIGRvYyBhbG9uZyB0aGVzZSBsaW5lcyA6CgotLS0KIERvY3VtZW50
YXRpb24vbmV0d29ya2luZy9waHkucnN0IHwgMTkgKysrKysrKysrKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3BoeS5yc3QgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtp
bmcvcGh5LnJzdAppbmRleCBmNjQ2NDE0MTdjNTQuLjdhYjc3Zjk4NjdhMCAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3BoeS5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3
b3JraW5nL3BoeS5yc3QKQEAgLTEwNiwxNCArMTA2LDE3IEBAIFdoZW5ldmVyIHBvc3NpYmxlLCB1
c2UgdGhlIFBIWSBzaWRlIFJHTUlJIGRlbGF5IGZvciB0aGVzZSByZWFzb25zOgogICBjb25maWd1
cmUgY29ycmVjdGx5IGEgc3BlY2lmaWVkIGRlbGF5IGVuYWJsZXMgbW9yZSBkZXNpZ25zIHdpdGgg
c2ltaWxhciBkZWxheQogICByZXF1aXJlbWVudHMgdG8gYmUgb3BlcmF0ZWQgY29ycmVjdGx5CiAK
LUZvciBjYXNlcyB3aGVyZSB0aGUgUEhZIGlzIG5vdCBjYXBhYmxlIG9mIHByb3ZpZGluZyB0aGlz
IGRlbGF5LCBidXQgdGhlCi1FdGhlcm5ldCBNQUMgZHJpdmVyIGlzIGNhcGFibGUgb2YgZG9pbmcg
c28sIHRoZSBjb3JyZWN0IHBoeV9pbnRlcmZhY2VfdCB2YWx1ZQotc2hvdWxkIGJlIFBIWV9JTlRF
UkZBQ0VfTU9ERV9SR01JSSwgYW5kIHRoZSBFdGhlcm5ldCBNQUMgZHJpdmVyIHNob3VsZCBiZQot
Y29uZmlndXJlZCBjb3JyZWN0bHkgaW4gb3JkZXIgdG8gcHJvdmlkZSB0aGUgcmVxdWlyZWQgdHJh
bnNtaXQgYW5kL29yIHJlY2VpdmUKLXNpZGUgZGVsYXkgZnJvbSB0aGUgcGVyc3BlY3RpdmUgb2Yg
dGhlIFBIWSBkZXZpY2UuIENvbnZlcnNlbHksIGlmIHRoZSBFdGhlcm5ldAotTUFDIGRyaXZlciBs
b29rcyBhdCB0aGUgcGh5X2ludGVyZmFjZV90IHZhbHVlLCBmb3IgYW55IG90aGVyIG1vZGUgYnV0
Ci1QSFlfSU5URVJGQUNFX01PREVfUkdNSUksIGl0IHNob3VsZCBtYWtlIHN1cmUgdGhhdCB0aGUg
TUFDLWxldmVsIGRlbGF5cyBhcmUKLWRpc2FibGVkLgorVGhlIE1BQyBkcml2ZXIgbWF5IGFkZCBk
ZWxheXMgaWYgdGhlIFBDQiBkb2Vzbid0IGluY2x1ZGUgYW55LiBUaGlzIGNhbiBiZQorZGV0ZWN0
ZWQgYmFzZWQgb24gZmlybXdhcmUgInJ4LWludGVybmFsLWRlbGF5LXBzIiBhbmQgInR4LWludGVy
bmFsLWRlbGF5LXBzIgorcHJvcGVydGllcy4KKworV2hlbiB0aGUgTUFDIGRyaXZlciBjYW4gaW5z
ZXJ0IHRoZSBkZWxheXMsIGl0IHNob3VsZCBhbHdheXMgZG8gc28gd2hlbiB0aGVzZQorcHJvcGVy
dGllcyBhcmUgcHJlc2VudCBhbmQgbm9uLXplcm8sIHJlZ2FyZGxlc3Mgb2YgdGhlIFJHTUlJIG1v
ZGUgc3BlY2lmaWVkLgorCitIb3dldmVyLCB0aGUgTUFDIGRyaXZlciBtdXN0IGFkanVzdCB0aGUg
UEhZX0lOVEVSRkFDRV9NT0RFX1JHTUlJXyogbW9kZSBpdCBwYXNzZXMKK3RvIHRoZSBjb25uZWN0
ZWQgUEhZIGRldmljZSAodGhyb3VnaCBwaHlfYXR0YWNoIG9yIHBoeWxpbmtfY3JlYXRlKCkgZm9y
IGV4YW1wbGUpCit0byBhY2NvdW50IGZvciBNQUMtc2lkZSBkZWxheSBpbnNlcnRpb24sIHNvIHRo
YXQgdGhlIHRoZSBQSFkgZGV2aWNlIGtub3dzCitpZiBhbnkgZGVsYXlzIHN0aWxsIG5lZWRzIGlu
c2VydGlvbiBvbiBlaXRoZXIgVFggb3IgUlggcGF0aHMuCiAKIEluIGNhc2UgbmVpdGhlciB0aGUg
RXRoZXJuZXQgTUFDLCBub3IgdGhlIFBIWSBhcmUgY2FwYWJsZSBvZiBwcm92aWRpbmcgdGhlCiBy
ZXF1aXJlZCBkZWxheXMsIGFzIGRlZmluZWQgcGVyIHRoZSBSR01JSSBzdGFuZGFyZCwgc2V2ZXJh
bCBvcHRpb25zIG1heSBiZQotLSAKClRoYW5rcywKCk1heGltZQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
