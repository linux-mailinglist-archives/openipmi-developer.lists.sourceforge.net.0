Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPf/M3xS6GnlJAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Apr 2026 06:45:48 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBBE441FE8
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Apr 2026 06:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:Message-Id:Date:To:References:
	In-Reply-To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YpHuWvTBkGT6A4DxPS/ASxIGgK5Q3Tm1VkNVD10t65c=; b=lRMjoMdb6M0NjuICcsAXSryiow
	z/BSv886HPHFIIMPsaUvgKh4a2T9JFTLgVmx8OTDIyr8V5FMLkIQ/tOXG1FH577E/OuOcV2rUw6Tv
	o9PHoLZj9PmZ+TO8zIkk2+glM2EqhBexvkOZRPzfFEq/tJKRj/9CfefXLPhEqSQ3lH5U=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wFPT2-0002gZ-Ld;
	Wed, 22 Apr 2026 04:45:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1wFPT0-0002gS-GK
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Apr 2026 04:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Mime-Version:Message-Id:Date:To:References:
 Content-Transfer-Encoding:Content-Type:Subject:From:In-Reply-To:Cc:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lsgXeK7w9CvjjUVrgZ92X1KlxwMlaozv07J4G/KGWC8=; b=WEvxbf5W59s7uhz5/sdUJ5Ty/t
 jDm5R3YMlOZDsYNBMaNFC/nBOq2FYKVNYfzrLlCbyNZCfjyuaDohzGnP0K26hur9huDGbZrYaVRfX
 r/EWPVGbvoSqIDoK5iN8+/qaLXUd2WzKdG27w8jSaN22Vo3XoVxKsEvX26pn43akqJN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Mime-Version:Message-Id:Date:To:References:Content-Transfer-Encoding:
 Content-Type:Subject:From:In-Reply-To:Cc:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lsgXeK7w9CvjjUVrgZ92X1KlxwMlaozv07J4G/KGWC8=; b=BzEjEvjJ4UGmGMaIFT1RW5uc8p
 A+9EbYIkwKWWLcFDV2wZBX5emfHyx0hn4/L8Ojl8/3d23K5Su3RHW/i7TXc+WPl45v8pJojjNUyfn
 F2hCx9HKptWF/XbFe1GnIrlEHxYzD5NLqIY/t9FMgNv6rMTF9bJQpvIsnjKwWZWkHp6E=;
Received: from va-1-112.ptr.blmpb.com ([209.127.230.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wFPSx-0005NK-9C for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Apr 2026 04:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1776833119; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=lsgXeK7w9CvjjUVrgZ92X1KlxwMlaozv07J4G/KGWC8=;
 b=JgCo2I3NCaDNQ0kweXqQvxGNL9d9WY/j0DeW4c2Xd1HE/ofdsV57IB23KyfQCM639bnmaF
 Taq3EHgjxgU+wuyXb5Dz7qFnid+oHLbzgN9EbxyZDLgdaNG9MaP/IWQVeeaGcl052jsOEP
 s4VRi4Tmc8uNenTJMA+8htCTZ1QfMO8U/iVjZGXBTHJ3CRxj5aXhUMZO8fX2xfVV/I5vtA
 lHwQ90g/8GX2ENF7WXju4vzwTNGEhqlVUQjSHBnWHMLKOgKgDgAupxuJh91hnfFEyCK0PI
 U5KWNLxyyGD3l1SE8bE1h6wtNMwl8Exw+ygL+xVyvOB/q+DQlbv0HaPT0I5eKg==
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
In-Reply-To: <aef4rrkhL4xFmh3h@matt-Precision-5490>
X-Mailer: Apple Mail (2.3776.700.51.11.4)
References: <20260421132544.2666174-1-corey@minyard.net>
 <aef4rrkhL4xFmh3h@matt-Precision-5490>
X-Lms-Return-Path: <lba+269e8525d+01611d+lists.sourceforge.net+zhangjian.3032@bytedance.com>
To: "Matt Fleming" <matt@readmodwrite.com>
Date: Wed, 22 Apr 2026 12:44:38 +0800
Message-Id: <09595A34-09D4-4DD8-AF5C-1D285CB8387C@bytedance.com>
Mime-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > 2026年4月22日 06:24，Matt Fleming <matt@readmodwrite.com>
    写道： > > On Tue, Apr 21, 2026 at 07:42:42AM -0500, Corey Minyard wrote:
    >> Matt reported that there were issues with the IPMI drive [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
X-Headers-End: 1wFPSx-0005NK-9C
Subject: Re: [Openipmi-developer] [PATCH 0/1] ipmi: Fix issues with BMCs
 that report event and message incorrectly
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
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 linux-kernel@vger.kernel.org, Tony Camuso <tcamuso@redhat.com>,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:tcamuso@redhat.com,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	TAGGED_RCPT(0.00)[openipmi-developer];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[zhangjian.3032@bytedance.com];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:replyto,bytedance.com:mid,readmodwrite.com:email]
X-Rspamd-Queue-Id: DDBBE441FE8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAyMDI25bm0NOaciDIy5pelIDA2OjI077yMTWF0dCBGbGVtaW5nIDxtYXR0QHJlYWRtb2R3cml0
ZS5jb20+IOWGmemBk++8mgo+IAo+IE9uIFR1ZSwgQXByIDIxLCAyMDI2IGF0IDA3OjQyOjQyQU0g
LTA1MDAsIENvcmV5IE1pbnlhcmQgd3JvdGU6Cj4+IE1hdHQgcmVwb3J0ZWQgdGhhdCB0aGVyZSB3
ZXJlIGlzc3VlcyB3aXRoIHRoZSBJUE1JIGRyaXZlciBnZXR0aW5nIHdlZGdlZAo+PiBpbiBzb21l
IGNhc2VzLiAgSXQgdHVybnMgb3V0IHRoYXQgdGhlIEJNQyB3YXMgbm90IHJlcG9ydGluZyBhbiBl
cnJvciBhcwo+PiBpdCBzaG91bGQgaGF2ZSAocGVyIHRoZSBzcGVjKSB3aGVuIHRoZSBldmVudCBx
dWV1ZSB3YXMgZW1wdHkuICBUaGUgSVBNSQo+PiBkcml2ZXIgd291bGQgdGhlbiByZXF1ZXN0IHRo
ZSBuZXh0IGV2ZW50LCBhbmQgc28gb24sIHdlZGdpbmcgdGhlIGRyaXZlci4KPiAKPiBUaGFua3Mg
Zm9yIHJlcGx5aW5nIHNvIHF1aWNrbHksIENvcmV5LiBJJ2xsIHRlc3QgdGhlc2Ugb3V0Lgo+IAo+
IE9uZSBiaXQgb2YgaW5mbyBJIHB1bGxlZCBvdXQgb2YgdGhlIHN0dWNrIG1hY2hpbmUgaXMgdGhh
dCB0aGUgcmVzcG9uc2UKPiBsb29rcyBwcm9wZXJseSBmb3JtZWQuCj4gCj4gSSBzYW1wbGVkIHRo
ZSBmaXJzdCA4IGVudHJpZXMgYW5kIHRoZXkgd2VyZSBhbGwgaWRlbnRpY2FsIDE5LWJ5dGUKPiBz
dWNjZXNzZnVsIFJFQURfRVZFTlRfTVNHX0JVRkZFUiByZXNwb25zZXM6Cj4gCj4gIDFjIDM1IDAw
IDU1IDU1IGMwIDQxIGE3IDAwIDAwIDAwIDAwIDAwIDNhIGZmIDAwIGZmIGZmIGZmCj4gCgpQZXJo
YXBzIEkga25vdyB3aGVyZSB0aGlzIGRhdGEgY29tZXMgZnJvbS4gCkR1cmluZyBhIHByZXZpb3Vz
IGRlYnVnZ2luZyBzZXNzaW9uICh3aGVyZSBpcG1pdG9vbCB2MS44LjE5IGZhaWxlZCBvbiBzZW5z
b3IgbGlzdCBkdWUgdG8gYW4gdW5kZXJmbG93IGluCm5yX251bWJlcnMsIHdoaWNoIGhhcyBzaW5j
ZSBiZWVuIGZpeGVkKSwgSSBub3RpY2VkIHRoaXMgYmVoYXZpb3IuIEhvd2V2ZXIsIEkK4oCZbSBu
b3Qgc3VyZSB3aHkgaXQgaXMgaW1wbGVtZW50ZWQgdGhpcyB3YXkgb3Igd2hhdCBleGFjdGx5IHRo
aXMgY29tbWFuZCBpcyBpbnRlbmRlZCB0byBkby4KSWYgeW91IGFyZSBydW5uaW5nIG9uIE9wZW5C
TUMsIGl0IGlzIHZlcnkgbGlrZWx5IHJlbGF0ZWQgdG8gdGhpcyBwYXJ0LCAKd2hlcmUgYSBmaXhl
ZCB2YWx1ZSBpcyBhbHdheXMgcmV0dXJuZWQgKGVzcGVjaWFsbHkgaWYgdGhlIEtDUyBjaGFubmVs
IGhhcHBlbnMgdG8gYmUgY29uZmlndXJlZCBhcyAxNSk6CgpTZWU6IGh0dHBzOi8vZ2l0aHViLmNv
bS9vcGVuYm1jL3Bob3NwaG9yLWhvc3QtaXBtaWQvYmxvYi9tYXN0ZXIvc3lzdGVtaW50ZmNtZHMu
Y3BwI0wzNQoKSmlhbi4KCj4gU28gb24gdGhpcyBtYWNoaW5lLCB0aGUgZXZlbnQgcmVwbGllcyBk
byBub3QgbG9vayBzaG9ydCBvciBtYWxmb3JtZWQ7Cj4gdGhleSBsb29rIGxpa2UgcmVwZWF0ZWQg
c3VjY2Vzc2Z1bCBldmVudC1idWZmZXIgcmVhZHMgd2l0aCB0aGUgc2FtZQo+IHBheWxvYWQuCj4g
Cj4gVGhhbmtzLAo+IE1hdHQKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IE9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKPiBPcGVu
aXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVs
b3Blcgo=
