Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFloOVTNp2m6jwAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 04 Mar 2026 07:12:36 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2908B1FB06C
	for <lists+openipmi-developer@lfdr.de>; Wed, 04 Mar 2026 07:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:Date:Mime-Version:To:References:
	Message-Id:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I+wMX/IXqYQQ2Vu4BmU8Xeg+4HSbJuggjeAysIyffzs=; b=Nkgy4W4osmbXJNzAZ9IFB3tFRY
	XxyKjNACjx8OLemGNL88dHjtVID2K4oTZv2hYlRoS4Q3tO7vcYx9kukUcp0V5IQrhiaTtj2kgtAZR
	CqUx1Ip82114wNkrQk1XoapPe9Vdu5d3taXw7NfgpJ+Ijj2OsCOT+Yf8dt++nRweCSkk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vxfT7-0001NY-Tv;
	Wed, 04 Mar 2026 06:12:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1vxfT5-0001NS-Ok
 for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Mar 2026 06:12:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Date:Subject:Cc:Mime-Version:To:
 Content-Type:Content-Transfer-Encoding:From:References:Message-Id:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ab7WnWu68rjRJfhCnJkanSrG8td0p4c70/hPD17wSGw=; b=SI7OkReKUxWuw5CAiwyTM9n0wk
 rVQEEnIfJtn8E9Mlws/Los6+RZL/HXQts6NGyKon/49gL29hHszV/u3hH+yc/9KhURvaThvjW/oIl
 MYyJrOmzW807j+TQ5sDNMKep+4yHd5nKWxYaBPK1Pxy1gaYNAu4befsBOPyNoJNqw2Sk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=In-Reply-To:Date:Subject:Cc:Mime-Version:To:Content-Type:
 Content-Transfer-Encoding:From:References:Message-Id:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ab7WnWu68rjRJfhCnJkanSrG8td0p4c70/hPD17wSGw=; b=TxOajOzav+yWpbkBO0ZrhqOz0D
 P+3NQNQeQRXrjNUx2Ml2mFIA9J5ixesOEWuJBbLIZ2JySDizy3Br1NjMHbhlXHVfgLFyVdaHj0Tib
 kXB8Vrn8rOo+o+PLFnCUX3w2S/ig8UbxLqiO5w1NHn8fsRr44GSGLQfwPMON0+3ZzEOA=;
Received: from sg-1-104.ptr.blmpb.com ([118.26.132.104])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vxfT4-0004Qj-2V for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Mar 2026 06:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1772604721; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=Ab7WnWu68rjRJfhCnJkanSrG8td0p4c70/hPD17wSGw=;
 b=cyxISGYABqHkbi+7aYkGYXEKeux1AK0dprOH2moSdsO+B0CyQ4FvxR1AA/iSF+bRfTSZu0
 PMP0pTu7wlATIA9zDilLUkv6zHhBh0p+4ouyJST/2w3o15iQG4v4t76oMptdv6nTHV/DLZ
 QHo4jz5aa/PvPjtt4VoZW39NZNAyLMPzHw6MtkcPn2ZBH28zK7eWCvcCzlcDsVpQ/eta7H
 lSlflMBoGPmuwEklU7bKsR1n7y7w/8karp+kDy78iRE/7JStgvA7kuyeXsdmTmLmKgUqQO
 qJcYmoPB7QF5HX3u/mhhLBwKv9KVe5Ywli99krTC6FhxQjFgbS+KhwieFqyASQ==
Message-Id: <2BCF1265-77C4-44A0-8D54-B34A21F0CAD8@bytedance.com>
X-Lms-Return-Path: <lba+269a7cd2f+76245f+lists.sourceforge.net+zhangjian.3032@bytedance.com>
References: <20260302061746.1579192-1-zhangjian.3032@bytedance.com>
 <aabnHaOxgqHOxFTl@mail.minyard.net>
 <FE0DB012-E8AF-4EFF-ADDB-F25870F9BC3E@bytedance.com>
X-Mailer: Apple Mail (2.3776.700.51.11.4)
To: <corey@minyard.net>
Mime-Version: 1.0
X-Original-From: ByteDance <zhangjian.3032@bytedance.com>
Date: Wed, 4 Mar 2026 14:11:36 +0800
In-Reply-To: <FE0DB012-E8AF-4EFF-ADDB-F25870F9BC3E@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, Thanks for pointing out the multi-part handling.
 After reviewing the source code in detail, I found that the following cases:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vxfT4-0004Qj-2V
Subject: Re: [Openipmi-developer] [RFC] ipmi: ipmi_ssif: require minimum
 response length
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
From: ByteDance via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: ByteDance <zhangjian.3032@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 2908B1FB06C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[zhangjian.3032@bytedance.com];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:replyto,bytedance.com:email,bytedance.com:mid,minyard.net:email,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

SGkgQ29yZXksCgpUaGFua3MgZm9yIHBvaW50aW5nIG91dCB0aGUgbXVsdGktcGFydCBoYW5kbGlu
Zy4KCkFmdGVyIHJldmlld2luZyB0aGUgc291cmNlIGNvZGUgaW4gZGV0YWlsLCBJIGZvdW5kIHRo
YXQgdGhlIGZvbGxvd2luZyBjYXNlczoKCiAgICDigKIgTXVsdGktcGFydCBSZWFkIFN0YXJ0CiAg
ICDigKIgTXVsdGktcGFydCBSZWFkIFJldHJ5CiAgICDigKIgTXVsdGktcGFydCBSZWFkIEVuZAoK
YWxsIGFsbG93IGJ5dGUgbGVuZ3RocyBzbWFsbGVyIHRoYW4gMy4KCkFkZGl0aW9uYWxseSwgdGhl
IElQTUkgc3BlY2lmaWNhdGlvbiBzdGF0ZXM6CmBgYApJZiB0aGVyZSBpcyBubyBkYXRhIGF2YWls
YWJsZSwgdGhlIEJNQyB3aWxsIE5BQ0sgdGhlIHJlYWQgcG9ydGlvbiBvZiB0aGUgU01CdXMgdHJh
bnNmZXIuCmBgYAoKR2l2ZW4gdGhpcywgbXkgcGF0Y2ggaXMgaW5jb3JyZWN0LiBJ4oCZbGwgd2l0
aGRyYXcgaXQgYW5kIHdvcmsgb24gZml4aW5nIHRoZSBpc3N1ZSBwcm9wZXJseSBpbiB0aGUgQk1D
IEnCskMgY29udHJvbGxlciBpbnN0ZWFkLgoKVGhhbmtzIGFnYWluIGZvciB0aGUgcmV2aWV3IGFu
ZCB0aGUgaGVscGZ1bCBmZWVkYmFjay4KCkJlc3QgcmVnYXJkcywKSmlhbgoKCgoKPiAyMDI25bm0
M+aciDTml6UgMTA6MzXvvIxCeXRlRGFuY2UgPHpoYW5namlhbi4zMDMyQGJ5dGVkYW5jZS5jb20+
IOWGmemBk++8mgo+IAo+IFRoYW5rcyBmb3IgdGhlIHJldmlldyEgIEnigJlsbCBzZW5kIHRoZSB2
MiBwYXRjaC4KPiAKPiBKaWFuLgo+IAo+PiAyMDI25bm0M+aciDPml6UgMjE6NTDvvIxDb3JleSBN
aW55YXJkIDxjb3JleUBtaW55YXJkLm5ldD4g5YaZ6YGT77yaCj4+IAo+PiBPbiBNb24sIE1hciAw
MiwgMjAyNiBhdCAwMjoxNzo0NlBNICswODAwLCBKaWFuIFpoYW5nIHdyb3RlOgo+Pj4gQSB2YWxp
ZCBJUE1JIG92ZXIgU1NJRiByZXNwb25zZSBtdXN0IGNvbnRhaW4gYXQgbGVhc3QgdGhyZWUgYnl0
ZXMKPj4+IChOZXRGbi9MVU4sIENvbW1hbmQgYW5kIENvbXBsZXRpb24gQ29kZSkuCj4+PiAKPj4+
IFNvbWUgRE1BLW9ubHkgSTJDIGNvbnRyb2xsZXJzIG1heSByZXR1cm4gc2hvcnQgcmVhZHMgaW5z
dGVhZCBvZiBhCj4+PiBwcm9wZXIgTkFDSyB3aGVuIHRoZSByZXNwb25zZSBpcyBub3QgcmVhZHku
IFRyZWF0IHN1Y2ggc2hvcnQgcmVhZHMKPj4+IGFzIGluY29tcGxldGUgYW5kIHJldHJ5IHVudGls
IGEgZnVsbCByZXNwb25zZSBpcyByZWNlaXZlZC4KPj4gCj4+IFdlbGwgdGhhdCdzIHVuZnJpZW5k
bHkgb2YgdGhlbS4KPj4gCj4+IEFueXdheSwgSSBzZWUgdGhlIGlzc3VlLiAgSSB3b3VsZCBhc2sg
YSBjb3VwbGUgb2YgdGhpbmdzOgo+PiAKPj4gQ2FuIHlvdSBhZGQgYSBjb21tZW50IGJlZm9yZSB0
aGlzICJpZiIgc3RhdGVtZW50IHNvIHBlb3BsZSBpbiB0aGUgZnV0dXJlCj4+IGtub3cgd2h5IGl0
J3MgdGhpcyB3YXk/ICBPdGhlcndpc2UgaXQncyBhIGJpdCBteXN0ZXJpb3VzLgo+PiAKPj4gV291
bGRuJ3QgdGhlIGkyY19zbWJ1c19yZWFkX2Jsb2NrX2RhdGEoKSBpbiBpcG1pX3NzaWZfdGhyZWFk
KCkgaGF2ZSB0aGUKPj4gc2FtZSBpc3N1ZT8gIFdlIHNob3VsZCBmaXggYWxsIG9mIHRoZXNlIGlm
IHNvLgo+PiAKPj4gVGhhbmtzLAo+PiAKPj4gLWNvcmV5Cj4+IAo+Pj4gCj4+PiBTaWduZWQtb2Zm
LWJ5OiBKaWFuIFpoYW5nIDx6aGFuZ2ppYW4uMzAzMkBieXRlZGFuY2UuY29tPgo+Pj4gLS0tCj4+
PiBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyB8IDIgKy0KPj4+IDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYu
Ywo+Pj4gaW5kZXggMzdhNWNiNWM1M2YxLi42NGVlOTM5YTdhNGIgMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+Pj4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkv
aXBtaV9zc2lmLmMKPj4+IEBAIC0xMzAwLDcgKzEzMDAsNyBAQCBzdGF0aWMgaW50IHJlYWRfcmVz
cG9uc2Uoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwgdW5zaWduZWQgY2hhciAqcmVzcCkKPj4+
IHdoaWxlIChyZXRyeV9jbnQgPiAwKSB7Cj4+PiByZXQgPSBpMmNfc21idXNfcmVhZF9ibG9ja19k
YXRhKGNsaWVudCwgU1NJRl9JUE1JX1JFU1BPTlNFLAo+Pj4gcmVzcCk7Cj4+PiAtIGlmIChyZXQg
PiAwKQo+Pj4gKyBpZiAocmV0ID49IDMpCj4+PiBicmVhazsKPj4+IG1zbGVlcChTU0lGX01TR19N
U0VDKTsKPj4+IHJldHJ5X2NudC0tOwo+Pj4gLS0gCj4+PiAyLjIwLjEKPgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9w
ZXIK
