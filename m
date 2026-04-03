Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPdXIZl2z2kewgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:13:13 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D84391FB6
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:Message-Id:References:
	Mime-Version:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=33CNfVAoSCuRXkCvuxfZGBCfCcnjbBIpSwHyGMheL8w=; b=dURby6fufpYDE6vQs+B9qRVEn2
	mdMI2wQgzMZC/7E9/dHGIXusSWCxSKC6JA31f56AmzHC7SAqj+w8uaHAEF8UdUU1zz84/ltG65K47
	mYiMmcNzgcWbFc1qOJcjKEPZydUNakGefwPLOEcd796qM9pyKZwL6HC+cUaToZ3YEK6A=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8ZeE-0007K8-4j;
	Fri, 03 Apr 2026 08:12:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8ZeC-0007Jw-OV
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Message-Id:
 From:Cc:References:Mime-Version:Date:Content-Type:Subject:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LxoEDnQaTXpx4sc1HFaDPhCyYLGIvg/Pa0Ha3uxmb7c=; b=VJ1+/aQcelwi8JoM4v5YjLdq0e
 A/jvYjSaPocmNDqCPKAhWGtRt0LIpIYJ+Nj1K7NV05BtAHurgf2IrZojqJ0bE2mBFadC6NmuEM0It
 LvTrvBF8Tge+4/CTsKBkajFzkAcIsRPsSXIuFOVKo/b+fq478FDCD/q5YwlGxcsi4Eao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Message-Id:From:Cc:References:
 Mime-Version:Date:Content-Type:Subject:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LxoEDnQaTXpx4sc1HFaDPhCyYLGIvg/Pa0Ha3uxmb7c=; b=T0IW3GzfuHRqUa85YdRsDsOknJ
 Qv1by6w/TJPFHn0r/BFd9wcPLFRLuV1b0eBxMXsEOkKq/lV7HFEhG1vtP4E4nswruJ//PJO9HJNNm
 HO9H6aipkFH0ktiTxG8M9QwBErK8dAxr4VU8OD3xGFwt3aYbnJWKRLoQGm6SFayNn4pc=;
Received: from va-1-114.ptr.blmpb.com ([209.127.230.114])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8ZeC-0007by-6o for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775203961; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=LxoEDnQaTXpx4sc1HFaDPhCyYLGIvg/Pa0Ha3uxmb7c=;
 b=l4HUmQRLgUiYY/NPtJF0tMBmQ3BBizkhS4VatHH+1NyxxGd5E71CYuVQS0NP+PVCJd852K
 UyLIsZSArtYhfMLXJesODEVwfOIworJ9spK6RGQ4ztPEMfAd5PBX91IVKtvqJ6U58M4GEL
 we5C2IviDUbhTZLUsq/uunp2FrRnHSV+wkkdgxVtS97lx/N+WJLyw7eHqf+RsWhd4ZB0Xy
 z3IkqYp2JmQ1/BB1XBU1ttrQrvd8Ur62opTO5UmLmhnSfH1aLQ95O1fDMnuOIjxDCuJThw
 usDbOIFsVwY3B6iEAIfHqpNj+ir4KeRxf4rW/cBgdkAxU9UH/Xb1juMvXoerUQ==
To: "Quan Nguyen" <quan@os.amperecomputing.com>
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
X-Lms-Return-Path: <lba+269cf7677+216d5c+lists.sourceforge.net+zhangjian.3032@bytedance.com>
Date: Fri, 3 Apr 2026 16:12:18 +0800
Mime-Version: 1.0
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
 <20260402110435.3589408-3-zhangjian.3032@bytedance.com>
 <61e671d8-01a8-4544-93a1-73e30f30ae7d@os.amperecomputing.com>
X-Mailer: Apple Mail (2.3776.700.51.11.4)
Message-Id: <E4171610-9170-44F3-A885-E18F00E07E06@bytedance.com>
In-Reply-To: <61e671d8-01a8-4544-93a1-73e30f30ae7d@os.amperecomputing.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > 2026年4月3日 15:22，Quan Nguyen <quan@os.amperecomputing.com>
    写道： > > > > On 2/4/26 18:04, Jian Zhang wrote: >> A truncated response,
    caused by host power-off, or other conditions, >> can [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1w8ZeC-0007by-6o
Subject: Re: [Openipmi-developer] [PATCH 3/5] ipmi: ssif_bmc: fix message
 desynchronization after truncated response
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
From: Jian Zhang via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jian Zhang <zhangjian.3032@bytedance.com>
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MV_CASE(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:quan@os.amperecomputing.com,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[zhangjian.3032@bytedance.com];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:replyto,bytedance.com:mid,amperecomputing.com:email,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 88D84391FB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAyMDI25bm0NOaciDPml6UgMTU6MjLvvIxRdWFuIE5ndXllbiA8cXVhbkBvcy5hbXBlcmVjb21w
dXRpbmcuY29tPiDlhpnpgZPvvJoKPiAKPiAKPiAKPiBPbiAyLzQvMjYgMTg6MDQsIEppYW4gWmhh
bmcgd3JvdGU6Cj4+IEEgdHJ1bmNhdGVkIHJlc3BvbnNlLCBjYXVzZWQgYnkgaG9zdCBwb3dlci1v
ZmYsIG9yIG90aGVyIGNvbmRpdGlvbnMsCj4+IGNhbiBsZWFkIHRvIG1lc3NhZ2UgZGVzeW5jaHJv
bml6YXRpb24uCj4+IFJhdyB0cmFjZSBkYXRhIChTVE9QIGxvc3Mgc2NlbmFyaW8sIGFkZCBzdGF0
ZSB0cmFuc2l0aW9uIGNvbW1lbnQpOgo+PiAxLiBULTE6IFJlYWQgcmVzcG9uc2UgcGhhc2UgKFNT
SUZfUkVTX1NFTkRJTkcpCj4+IDgyNzEuOTU1MzQyICBXUl9SQ1YgWzAzXSAgICAgICAgICAgICAg
ICAgICAgICAgICAgPC0gUmVhZCBwb2xsaW5nIGNtZAo+PiA4MjcxLjk1NTM0OCAgUkRfUkVRIFsw
NF0gIDw9PSBTU0lGX1JFU19TRU5ESU5HICAgIDwtIHN0YXJ0IHNlbmRpbmcgcmVzcG9uc2UKPj4g
ODI3MS45NTU0MzYgIFJEX1BSTyBbYjRdCj4+IDgyNzEuOTU1NTI3ICBSRF9QUk8gWzAwXQo+PiA4
MjcxLjk1NTYxOCAgUkRfUFJPIFtjMV0KPj4gODI3MS45NTU3MDcgIFJEX1BSTyBbMDBdCj4+IDgy
NzEuOTU1ODE0ICBSRF9QUk8gW2FkXSAgPD09IFNTSUZfUkVTX1NFTkRJTkcgICAgIDwtIGxhc3Qg
Ynl0ZQo+PiA8LSAhISBTVE9QIGxvc3QgKHRydW5jYXRlZCByZXNwb25zZSkKPiAKPiBIb25lc3Rs
eSwgSSBoYXZlIGEgbGl0dGxlIGNvbmNlcm4gYWJvdXQgaWYgdGhlcmUgaXMgdGhlIGNhc2UuIFdo
YXQgSSB0aGluayBpcyB0aGF0IGlmIHRoZXJlIHdhcyBubyBBQ0sgKFNDQSBpcyBub3QgcHVsbCBs
b3cgYnkgQ29udHJvbGxlcikgb24gdGhlIDl0aCBjbG9jayBwdWxzZSB3aGlsZSBUYXJnZXQgc2Vu
ZGluZyBkYXRhIHRvIGJ1cy4gVGFyZ2V0IHdpbGwgcmVsZWFzZSBTREEgbGluZSwgZXZlbnR1YWxs
eSwgdGhlcmUgd2lsbCBiZSBhIFNUT1AgY29uZGl0aW9uIGFuZCBhIFNMQVZFX1NUT1AgZXZlbnQg
c2hvdWxkIGJlIGVtaXR0ZWQuCgpUaGUgY29uY2VybiBpcyB2YWxpZCB1bmRlciBub3JtYWwgSTJD
IG9wZXJhdGlvbiB3aGVyZSB0aGUgY29udHJvbGxlcgpjb250aW51ZXMgdG8gZHJpdmUgdGhlIGNs
b2NrIGFuZCBpc3N1ZXMgYSBOQUNLLCB3aGljaCBndWFyYW50ZWVzIGEgU1RPUApjb25kaXRpb24u
CgpIb3dldmVyLCB0aGUgc2NlbmFyaW8gZGVzY3JpYmVkIGhlcmUgaXMgZGlmZmVyZW50OgoKLSBU
aGUgY29udHJvbGxlciBtYXkgYmUgcG93ZXJlZCBvZmYgb3IgcmVzZXQgYWJydXB0bHkKLSBTQ0wg
bWF5IHN0b3AgdG9nZ2xpbmcgYmVmb3JlIHRoZSA5dGggY2xvY2sKLSBBcyBhIHJlc3VsdCwgbm8g
QUNLL05BQ0sgcGhhc2UgaXMgY29tcGxldGVkCi0gVGhlcmVmb3JlLCBubyBTVE9QIGNvbmRpdGlv
biBpcyBnZW5lcmF0ZWQgb24gdGhlIGJ1cwoKSW4gc3VjaCBjYXNlcywgdGhlIHRhcmdldCBzdGF0
ZSBtYWNoaW5lIG1heSByZW1haW4gaW4KU1NJRl9SRVNfU0VORElORyB3aXRob3V0IHJlY2Vpdmlu
ZyBhIFNMQVZFX1NUT1AgZXZlbnQsCmxlYWRpbmcgdG8gZGVzeW5jaHJvbml6YXRpb24uCgpBZGRp
dGlvbmFsbHksIGJhc2VkIG9uIG15IHByZXZpb3VzIGV4cGVyaWVuY2Ugd2l0aCBNQ1RQIG92ZXIg
STJDLApkdXJpbmcgZXZlbnRzIGxpa2UgSTJDX1NMQVZFX1JFQURfUkVRVUVTVEVELCBJMkNfU0xB
VkVfV1JJVEVfUkVRVUVTVEVELCBJMkNfU0xBVkVfUkVBRF9QUk9DRVNTRUQsIGFuZCBJMkNfU0xB
VkVfV1JJVEVfUkVDRUlWRUQsCnZhcmlvdXMgYWJub3JtYWwgY29uZGl0aW9uc+KAlHN1Y2ggYXMg
cG93ZXIgbG9zcywgZmlybXdhcmUgYnVncywgb3IgSTJDIGJ1cyBoYW5nc+KAlGNhbiBpbnRlcnJ1
cHQgdGhlIHNpZ25hbGluZy4KClRoZXJlZm9yZSwgd2UgY2Fubm90IGFzc3VtZSB0aGF0IGEgU1RP
UCBjb25kaXRpb24gd2lsbCBhbHdheXMgYmUgb2JzZXJ2ZWQuCgpUaGUgY3VycmVudCBjaGFuZ2Ug
YWRkcmVzc2VzIHRoaXMgYnkgYWxsb3dpbmcgdGhlIHN0YXRlIG1hY2hpbmUsIHdoZW4gaW4gU1NJ
Rl9BQk9SVElORywgCnRvIGhhbmRsZSBhIG5ld2x5IGRldGVjdGVkIGNvbW1hbmQgcmVxdWVzdCBh
bmQgcHJvY2VlZCBhY2NvcmRpbmdseS4KCi0gSmlhbgoKPiAKPiAtIFF1YW4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxv
cGVyCg==
