Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D7CAC0886
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 May 2025 11:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sgRPkJF68ODVfUffmFt5GcA5dvQHlhLBOBT7UnfJM5I=; b=MntAum3Kv52OeIBYwhXrxDZTWL
	IGJCzS0su28KrkS0KDoZipfKT6opT0rDnPUfe3onJ9NcGqsbFEdHmVC8rQyc5bXIMbrEt2M3jqb3X
	SjpjxlVk1cwG47zmV86Oz/supxlWz4s9Ppf/KEpnO2ZpTa00PgtizaWG//6HA1WNYgBg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uI284-0003G7-OP;
	Thu, 22 May 2025 09:22:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1uI283-0003Ft-Jr
 for openipmi-developer@lists.sourceforge.net;
 Thu, 22 May 2025 09:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0YkO0uIjG4i8mnNOYqfYjq4RKnZjGlxON9NYszRnOrQ=; b=lV0qACVpmp02hTKAsNp37TmOFg
 Z/w69TY01T5awr0rVhARoSQ0zql31SJ+b99XqxbJGZCUSO72yFRyJ5k4Kf16a63r0aM3lp00mw6rM
 is450LRG0QrPBKRsKu2QbYSed66xykzpx5cVHhM7fH3i1itrm5BHtluUpYmuNki5R9Ek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0YkO0uIjG4i8mnNOYqfYjq4RKnZjGlxON9NYszRnOrQ=; b=jeAYb4pM9W+hyLICTBQ/9k07aD
 HGNviWdhwad05yjK6ZRiz9HXjSC52RV8e46yKZlhL3KVgiUVZrESNe/2ytaeLQJUjmFMM1j+0Q1IM
 96nkVhs8tyxLteHEI+VCfQkBJiY6xh4TkkmlhxdPYXsuBtqg163TjhsBbWYgQCp0AurY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uI282-0002AK-HO for openipmi-developer@lists.sourceforge.net;
 Thu, 22 May 2025 09:22:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0C0895C580A;
 Thu, 22 May 2025 09:19:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB1F6C4CEE4;
 Thu, 22 May 2025 09:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747905732;
 bh=i8dCkvq7F3CC+MwXu1caXMU8e1Ced2QXY+V/762C0us=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rvf8sQ3QJCgeX1omXxuD4whjqsxDfAtoPBsLnnHsxiciXqFCLODHbd7H+dngc9K6p
 0REgwotVacoRiUR+qkzBnjCWynYenu62Y/bVHjjVXSdjTyoxBLg750KAVPAk3XGbWr
 wPDViXnVo7AqhTn6Rh6pcjEZK1hdPtMJHlQ7Hi8ajnHz4YPAes6CGCZl8BYH5HCrJ7
 OZTusff9JIQxpiAX95Iucp8QOTzER+moZvZSfyULP7MZP/6+tys+QFxoLpPNH6Ngz/
 J915U6eA55BJDa/pQwgRbxReXH4oUigHs/4kggxWZKfedz02hfybU/fwy1hIWTvGzu
 +u2CiaPUXviPQ==
Date: Thu, 22 May 2025 10:22:08 +0100
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <20250522092208.GB1199143@google.com>
References: <cover.1747276047.git.zhoubinbin@loongson.cn>
 <778675bfe1040cd1bf4d281dc5c5f20edc4145c1.1747276047.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <778675bfe1040cd1bf4d281dc5c5f20edc4145c1.1747276047.git.zhoubinbin@loongson.cn>
X-Spam-Score: -5.5 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Just "core driver" in the subject line, rather than "MFD core
 driver". > The Loongson-2K Board Management Controller provides an PCIe >
 interface to the host to access the feature implemented in the BMC. > > The
 BMC is assembled on a server similar to the server machine [...] 
 Content analysis details:   (-5.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uI282-0002AK-HO
Subject: Re: [Openipmi-developer] [PATCH v2 1/3] mfd: ls2kbmc: Introduce
 Loongson-2K BMC MFD Core driver
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
From: Lee Jones via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Lee Jones <lee@kernel.org>
Cc: Chong Qiao <qiaochong@loongson.cn>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SnVzdCAiY29yZSBkcml2ZXIiIGluIHRoZSBzdWJqZWN0IGxpbmUsIHJhdGhlciB0aGFuICJNRkQg
Y29yZSBkcml2ZXIiLgoKPiBUaGUgTG9vbmdzb24tMksgQm9hcmQgTWFuYWdlbWVudCBDb250cm9s
bGVyIHByb3ZpZGVzIGFuIFBDSWUKPiBpbnRlcmZhY2UgdG8gdGhlIGhvc3QgdG8gYWNjZXNzIHRo
ZSBmZWF0dXJlIGltcGxlbWVudGVkIGluIHRoZSBCTUMuCj4gCj4gVGhlIEJNQyBpcyBhc3NlbWJs
ZWQgb24gYSBzZXJ2ZXIgc2ltaWxhciB0byB0aGUgc2VydmVyIG1hY2hpbmUgd2l0aAo+IExvb25n
c29uLTNDNjAwMCBDUFVzLiBJdCBzdXBwb3J0cyBtdWx0aXBsZSBzdWItZGV2aWNlcyBsaWtlIERS
TS4KPiAKPiBDby1kZXZlbG9wZWQtYnk6IENob25nIFFpYW8gPHFpYW9jaG9uZ0Bsb29uZ3Nvbi5j
bj4KPiBTaWduZWQtb2ZmLWJ5OiBDaG9uZyBRaWFvIDxxaWFvY2hvbmdAbG9vbmdzb24uY24+Cj4g
U2lnbmVkLW9mZi1ieTogQmluYmluIFpob3UgPHpob3ViaW5iaW5AbG9vbmdzb24uY24+Cj4gLS0t
Cj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgfCAgMTMgKysrKwo+ICBkcml2ZXJzL21mZC9N
YWtlZmlsZSAgICAgIHwgICAyICsKPiAgZHJpdmVycy9tZmQvbHMya2JtYy1tZmQuYyB8IDE1NiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQs
IDE3MSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9sczJr
Ym1jLW1mZC5jCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL0tjb25maWcgYi9kcml2ZXJz
L21mZC9LY29uZmlnCj4gaW5kZXggMjJiOTM2MzEwMDM5Li4wNGU0MDA4NTQ0MWQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tZmQvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiBA
QCAtMjQyMiw1ICsyNDIyLDE4IEBAIGNvbmZpZyBNRkRfVVBCT0FSRF9GUEdBCj4gIAkgIFRvIGNv
bXBpbGUgdGhpcyBkcml2ZXIgYXMgYSBtb2R1bGUsIGNob29zZSBNIGhlcmU6IHRoZSBtb2R1bGUg
d2lsbCBiZQo+ICAJICBjYWxsZWQgdXBib2FyZC1mcGdhLgo+ICAKPiArY29uZmlnIE1GRF9MUzJL
X0JNQwo+ICsJdHJpc3RhdGUgIkxvb25nc29uLTJLIEJvYXJkIE1hbmFnZW1lbnQgQ29udHJvbGxl
ciBTdXBwb3J0Igo+ICsJZGVwZW5kcyBvbiBMT09OR0FSQ0gKPiArCWRlZmF1bHQgeSBpZiBMT09O
R0FSQ0gKPiArCXNlbGVjdCBNRkRfQ09SRQo+ICsJaGVscAo+ICsJICBTYXkgeWVzIGhlcmUgdG8g
YWRkIHN1cHBvcnQgZm9yIHRoZSBMb29uZ3Nvbi0ySyBCTUMKPiArCSAgd2hpY2ggaXMgYSBCb2Fy
ZCBNYW5hZ2VtZW50IENvbnRyb2xsZXIgY29ubmVjdGVkIHRvIHRoZSBQQ0llIGJ1cy4KPiArCSAg
VGhlIGRldmljZSBzdXBwb3J0cyBtdWx0aXBsZSBzdWItZGV2aWNlcyBsaWtlIERSTS4KPiArCSAg
VGhpcyBkcml2ZXIgcHJvdmlkZXMgY29tbW9uIHN1cHBvcnQgZm9yIGFjY2Vzc2luZyB0aGUgZGV2
aWNlczsKPiArCSAgYWRkaXRpb25hbCBkcml2ZXJzIG11c3QgYmUgZW5hYmxlZCBpbiBvcmRlciB0
byB1c2UgdGhlCj4gKwkgIGZ1bmN0aW9uYWxpdHkgb2YgdGhlIEJNQyBkZXZpY2UuCgpUaGlzIHBh
cmFncmFwaCBoYXMgc29tZSBvZGQgbGluZSBicmVha3MuICBQbGVhc2UgcmUtYWxpZ24uCgo+ICBl
bmRtZW51Cj4gIGVuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL01ha2VmaWxlIGIvZHJp
dmVycy9tZmQvTWFrZWZpbGUKPiBpbmRleCA5NDhjYmRmNDJhMTguLjE4OTYwZWExM2I2NCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvbWZkL01ha2Vm
aWxlCj4gQEAgLTI5MCwzICsyOTAsNSBAQCBvYmotJChDT05GSUdfTUZEX1JTTVVfSTJDKQkrPSBy
c211X2kyYy5vIHJzbXVfY29yZS5vCj4gIG9iai0kKENPTkZJR19NRkRfUlNNVV9TUEkpCSs9IHJz
bXVfc3BpLm8gcnNtdV9jb3JlLm8KPiAgCj4gIG9iai0kKENPTkZJR19NRkRfVVBCT0FSRF9GUEdB
KQkrPSB1cGJvYXJkLWZwZ2Eubwo+ICsKPiArb2JqLSQoQ09ORklHX01GRF9MUzJLX0JNQykJKz0g
bHMya2JtYy1tZmQubwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9sczJrYm1jLW1mZC5jIGIv
ZHJpdmVycy9tZmQvbHMya2JtYy1tZmQuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi5iMzA5ZjYxMzJjMjQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVy
cy9tZmQvbHMya2JtYy1tZmQuYwo+IEBAIC0wLDAgKzEsMTU2IEBACj4gKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiArLyoKPiArICogTG9vbmdzb24tMksgQm9hcmQg
TWFuYWdlbWVudCBDb250cm9sbGVyIChCTUMpIE1GRCBDb3JlIERyaXZlci4KClJlbW92ZSB0aGUg
TUZEIHBhcnQuICBJdCdzIG5vdCBhIHRoaW5nIC0gd2UgbWFkZSBpdCB1cC4KCj4gKyAqIENvcHly
aWdodCAoQykgMjAyNCBMb29uZ3NvbiBUZWNobm9sb2d5IENvcnBvcmF0aW9uIExpbWl0ZWQuCgpO
byBjaGFuZ2VzIHNpbmNlIDIwMjQ/Cgo+ICsgKgo+ICsgKiBPcmlnaW5hbGx5IHdyaXR0ZW4gYnkg
Q2hvbmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+ICsgKiBSZXdyaXR0ZW4gZm9yIG1h
aW5saW5lIGJ5IEJpbmJpbiBaaG91IDx6aG91YmluYmluQGxvb25nc29uLmNuPgoKIk1haW5saW5l
IgoKVHlwaWNhbGx5IHdlIGp1c3QgZG86CgpBdXRob3JzOgoJQXV0aG9yIE9uZSA8b25lQGNvcnAu
Y29tPgoJQXV0aG9yIFR3byA8dHdvQGNvcnAuY29tPgoKPiArICovCj4gKwo+ICsjaW5jbHVkZSA8
bGludXgvYXBlcnR1cmUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+Cj4gKyNpbmNsdWRl
IDxsaW51eC9pbml0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L21mZC9jb3JlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L3BjaS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGNpX2lkcy5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvcGxhdGZvcm1fZGF0YS9zaW1wbGVmYi5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGxh
dGZvcm1fZGV2aWNlLmg+Cj4gKwo+ICsjZGVmaW5lIExTMktfRElTUExBWV9SRVNfU1RBUlQgKFNa
XzE2TSArIFNaXzJNKQo+ICsjZGVmaW5lIExTMktfSVBNSV9SRVNfU0laRQkweDFjCj4gKyNkZWZp
bmUgTFMyS19JUE1JMF9SRVNfU1RBUlQJKFNaXzE2TSArIDB4ZjAwMDAwKQo+ICsjZGVmaW5lIExT
MktfSVBNSTFfUkVTX1NUQVJUCShMUzJLX0lQTUkwX1JFU19TVEFSVCArIExTMktfSVBNSV9SRVNf
U0laRSkKPiArI2RlZmluZSBMUzJLX0lQTUkyX1JFU19TVEFSVAkoTFMyS19JUE1JMV9SRVNfU1RB
UlQgKyBMUzJLX0lQTUlfUkVTX1NJWkUpCj4gKyNkZWZpbmUgTFMyS19JUE1JM19SRVNfU1RBUlQJ
KExTMktfSVBNSTJfUkVTX1NUQVJUICsgTFMyS19JUE1JX1JFU19TSVpFKQo+ICsjZGVmaW5lIExT
MktfSVBNSTRfUkVTX1NUQVJUCShMUzJLX0lQTUkzX1JFU19TVEFSVCArIExTMktfSVBNSV9SRVNf
U0laRSkKCkxpbmUgdGhlbSBfYWxsXyB1cCBwbGVhc2UuICBPbmUgbW9yZSB0YWIgc2hvdWxkIGRv
IGl0LgoKPiArc3RhdGljIHN0cnVjdCByZXNvdXJjZSBsczJrX2Rpc3BsYXlfcmVzb3VyY2VzW10g
PSB7Cj4gKwlERUZJTkVfUkVTX01FTV9OQU1FRChMUzJLX0RJU1BMQVlfUkVTX1NUQVJULCBTWl80
TSwgInNpbXBsZWRybS1yZXMiKSwKPiArfTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcmVzb3VyY2Ug
bHMya19pcG1pMF9yZXNvdXJjZXNbXSA9IHsKPiArCURFRklORV9SRVNfTUVNX05BTUVEKExTMktf
SVBNSTBfUkVTX1NUQVJULCBMUzJLX0lQTUlfUkVTX1NJWkUsICJpcG1pMC1yZXMiKSwKPiArfTsK
PiArCj4gK3N0YXRpYyBzdHJ1Y3QgcmVzb3VyY2UgbHMya19pcG1pMV9yZXNvdXJjZXNbXSA9IHsK
PiArCURFRklORV9SRVNfTUVNX05BTUVEKExTMktfSVBNSTFfUkVTX1NUQVJULCBMUzJLX0lQTUlf
UkVTX1NJWkUsICJpcG1pMS1yZXMiKSwKPiArfTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcmVzb3Vy
Y2UgbHMya19pcG1pMl9yZXNvdXJjZXNbXSA9IHsKPiArCURFRklORV9SRVNfTUVNX05BTUVEKExT
MktfSVBNSTJfUkVTX1NUQVJULCBMUzJLX0lQTUlfUkVTX1NJWkUsICJpcG1pMi1yZXMiKSwKPiAr
fTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcmVzb3VyY2UgbHMya19pcG1pM19yZXNvdXJjZXNbXSA9
IHsKPiArCURFRklORV9SRVNfTUVNX05BTUVEKExTMktfSVBNSTNfUkVTX1NUQVJULCBMUzJLX0lQ
TUlfUkVTX1NJWkUsICJpcG1pMy1yZXMiKSwKPiArfTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcmVz
b3VyY2UgbHMya19pcG1pNF9yZXNvdXJjZXNbXSA9IHsKPiArCURFRklORV9SRVNfTUVNX05BTUVE
KExTMktfSVBNSTRfUkVTX1NUQVJULCBMUzJLX0lQTUlfUkVTX1NJWkUsICJpcG1pNC1yZXMiKSwK
PiArfTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgbWZkX2NlbGwgbHMya19ibWNfY2VsbHNbXSA9IHsK
PiArCU1GRF9DRUxMX1JFUygic2ltcGxlLWZyYW1lYnVmZmVyIiwgbHMya19kaXNwbGF5X3Jlc291
cmNlcyksCj4gKwlNRkRfQ0VMTF9SRVMoImxzMmstaXBtaS1zaSIsIGxzMmtfaXBtaTBfcmVzb3Vy
Y2VzKSwKPiArCU1GRF9DRUxMX1JFUygibHMyay1pcG1pLXNpIiwgbHMya19pcG1pMV9yZXNvdXJj
ZXMpLAo+ICsJTUZEX0NFTExfUkVTKCJsczJrLWlwbWktc2kiLCBsczJrX2lwbWkyX3Jlc291cmNl
cyksCj4gKwlNRkRfQ0VMTF9SRVMoImxzMmstaXBtaS1zaSIsIGxzMmtfaXBtaTNfcmVzb3VyY2Vz
KSwKPiArCU1GRF9DRUxMX1JFUygibHMyay1pcG1pLXNpIiwgbHMya19pcG1pNF9yZXNvdXJjZXMp
LAo+ICt9Owo+ICsKPiArLyoKPiArICogQ3VycmVudGx5IHRoZSBMb29uZ3Nvbi0ySzA1MDAgQk1D
IGhhcmR3YXJlIGRvZXMgbm90IGhhdmUgYW4gaTJjIGludGVyZmFjZSB0bwoKSTJDCgo+ICsgKiBh
ZGFwdCB0byB0aGUgcmVzb2x1dGlvbi4KClJlbW92ZSB0aGUgbGluZSBicmVhayBoZXJlLgoKPiAr
ICogV2Ugc2V0IHRoZSByZXNvbHV0aW9uIGJ5IHByZXNldHRpbmcgInZpZGVvPTEyODB4MTAyNC0x
NkAyTSIgdG8gdGhlIGJtYyBtZW1vcnkuCgpCTUMKCj4gKyAqLwo+ICtzdGF0aWMgaW50IGxzMmtf
Ym1jX2dldF92aWRlb19tb2RlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBzdHJ1Y3Qgc2ltcGxlZmJf
cGxhdGZvcm1fZGF0YSAqcGQpCj4gK3sKPiArCWNoYXIgKm1vZGU7Cj4gKwlpbnQgZGVwdGgsIHJl
dDsKPiArCj4gKwkvKiBUaGUgcGNpIG1lbSBiYXIgbGFzdCAxNk0gaXMgdXNlZCB0byBzdG9yZSB0
aGUgc3RyaW5nLiAqLwoKUENJCgpCQVIncyAobWF5YmU/KQoKPiArCW1vZGUgPSBkZXZtX2lvcmVt
YXAoJnBkZXYtPmRldiwgcGNpX3Jlc291cmNlX3N0YXJ0KHBkZXYsIDApICsgU1pfMTZNLCBTWl8x
Nk0pOwo+ICsJaWYgKCFtb2RlKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiArCS8qIGVudiBh
dCBsYXN0IDE2TSdzIGJlZ2lubmluZywgZmlyc3QgZW52IGlzICJ2aWRlbz0iICovCgpUaGlzIGRv
ZXNuJ3QgbWFrZSBzZW5zZSB0byBtZSAtIHBsZWFzZSByZXdvcmQuCgo+ICsJaWYgKCFzdHJuY21w
KG1vZGUsICJ2aWRlbz0iLCA2KSkKPiArCQltb2RlID0gbW9kZSArIDY7Cj4gKwo+ICsJcmV0ID0g
a3N0cnRvaW50KHN0cnNlcCgmbW9kZSwgIngiKSwgMTAsICZwZC0+d2lkdGgpOwo+ICsJaWYgKHJl
dCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldCA9IGtzdHJ0b2ludChzdHJzZXAoJm1vZGUs
ICItIiksIDEwLCAmcGQtPmhlaWdodCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4g
Kwo+ICsJcmV0ID0ga3N0cnRvaW50KHN0cnNlcCgmbW9kZSwgIkAiKSwgMTAsICZkZXB0aCk7Cj4g
KwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJcGQtPnN0cmlkZSA9IHBkLT53aWR0
aCAqIGRlcHRoIC8gODsKPiArCXBkLT5mb3JtYXQgPSBkZXB0aCA9PSAzMiA/ICJhOHI4ZzhiOCIg
OiAicjVnNmI1IjsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQoKU3VyZWx5IHRoZXJlIGlzIGEgc3Rh
bmRhcmQgZm9ybWF0IC8gQVBJIGZvciB0aGlzIGFscmVhZHk/CgoKCj4gK3N0YXRpYyBpbnQgbHMy
a19ibWNfcHJvYmUoc3RydWN0IHBjaV9kZXYgKmRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2Vf
aWQgKmlkKQo+ICt7Cj4gKwlpbnQgcmV0ID0gMDsKClRoZXJlIGlzIG5vIG5lZWQgdG8gcHJlLWlu
aXRpYWxpc2UgdGhpcy4KCj4gKwlyZXNvdXJjZV9zaXplX3QgYmFzZTsKPiArCXN0cnVjdCBzaW1w
bGVmYl9wbGF0Zm9ybV9kYXRhIHBkOwoKUmV2ZXJzZSB0aGVzZSBwbGVhc2UgKHJldmVyc2UgQ2hy
aXN0bWFzIHRyZWUgaXMgcHJlZmVycmVkKS4KPiArCj4gKwlyZXQgPSBwY2lfZW5hYmxlX2Rldmlj
ZShkZXYpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldCA9IGxzMmtf
Ym1jX2dldF92aWRlb19tb2RlKGRldiwgJnBkKTsKPiArCWlmIChyZXQpCj4gKwkJZ290byBkaXNh
YmxlX3BjaTsKPiArCj4gKwlsczJrX2JtY19jZWxsc1swXS5wbGF0Zm9ybV9kYXRhID0gJnBkOwo+
ICsJbHMya19ibWNfY2VsbHNbMF0ucGRhdGFfc2l6ZSA9IHNpemVvZihwZCk7Cj4gKwliYXNlID0g
ZGV2LT5yZXNvdXJjZVswXS5zdGFydCArIExTMktfRElTUExBWV9SRVNfU1RBUlQ7Cj4gKwo+ICsJ
LyogUmVtb3ZlIGNvbmZsaWN0aW5nIGVmaWZiIGRldmljZSAqLwo+ICsJcmV0ID0gYXBlcnR1cmVf
cmVtb3ZlX2NvbmZsaWN0aW5nX2RldmljZXMoYmFzZSwgU1pfNE0sICJzaW1wbGUtZnJhbWVidWZm
ZXIiKTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKCZkZXYtPmRldiwgIlJlbW92ZSBmaXJt
d2FyZSBmcmFtZWJ1ZmZlcnMgZmFpbGVkOiAlZFxuIiwgcmV0KTsKCiJGYWlsZWQgdG8gcmVtb3Zl
ZCBmaXJtd2FyZSBmcmFtZWJ1ZmZlcnMiCgo+ICsJCWdvdG8gZGlzYWJsZV9wY2k7Cj4gKwl9Cj4g
Kwo+ICsJcmV0dXJuIGRldm1fbWZkX2FkZF9kZXZpY2VzKCZkZXYtPmRldiwgUExBVEZPUk1fREVW
SURfQVVUTywKPiArCQkJCSAgICBsczJrX2JtY19jZWxscywgQVJSQVlfU0laRShsczJrX2JtY19j
ZWxscyksCj4gKwkJCQkgICAgJmRldi0+cmVzb3VyY2VbMF0sIDAsIE5VTEwpOwo+ICsKPiArZGlz
YWJsZV9wY2k6Cj4gKwlwY2lfZGlzYWJsZV9kZXZpY2UoZGV2KTsKPiArCXJldHVybiByZXQ7Cj4g
K30KPiArCj4gK3N0YXRpYyB2b2lkIGxzMmtfYm1jX3JlbW92ZShzdHJ1Y3QgcGNpX2RldiAqZGV2
KQo+ICt7Cj4gKwlwY2lfZGlzYWJsZV9kZXZpY2UoZGV2KTsKPiArfQo+ICsKPiArc3RhdGljIHN0
cnVjdCBwY2lfZGV2aWNlX2lkIGxzMmtfYm1jX2RldmljZXNbXSA9IHsKPiArCXsgUENJX0RFVklD
RShQQ0lfVkVORE9SX0lEX0xPT05HU09OLCAweDFhMDUpIH0sCj4gKwl7IH0KPiArfTsKPiArTU9E
VUxFX0RFVklDRV9UQUJMRShwY2ksIGxzMmtfYm1jX2RldmljZXMpOwo+ICsKPiArc3RhdGljIHN0
cnVjdCBwY2lfZHJpdmVyIGxzMmtfYm1jX2RyaXZlciA9IHsKPiArCS5uYW1lID0gImxzMmstYm1j
IiwKPiArCS5pZF90YWJsZSA9IGxzMmtfYm1jX2RldmljZXMsCj4gKwkucHJvYmUgPSBsczJrX2Jt
Y19wcm9iZSwKPiArCS5yZW1vdmUgPSBsczJrX2JtY19yZW1vdmUsCj4gK307Cj4gKwoKUmVtb3Zl
IHRoaXMgbGluZS4KCj4gK21vZHVsZV9wY2lfZHJpdmVyKGxzMmtfYm1jX2RyaXZlcik7Cj4gKwo+
ICtNT0RVTEVfREVTQ1JJUFRJT04oIkxvb25nc29uLTJLIEJNQyBkcml2ZXIiKTsKPiArTU9EVUxF
X0FVVEhPUigiTG9vbmdzb24gVGVjaG5vbG9neSBDb3Jwb3JhdGlvbiBMaW1pdGVkIik7Cj4gK01P
RFVMRV9MSUNFTlNFKCJHUEwiKTsKPiAtLSAKPiAyLjQ3LjEKPiAKCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
