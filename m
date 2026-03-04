Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOKCMJKap2ksigAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 04 Mar 2026 03:36:02 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3121F9E9A
	for <lists+openipmi-developer@lfdr.de>; Wed, 04 Mar 2026 03:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:In-Reply-To:References:
	Mime-Version:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=heFCdU5gk3bFe91OOGutRepi//FKr6Lye9NTSaGd+YE=; b=XpBW82tw8LhGdceivfglsCLkin
	9o8nga5YrYZkugit0Iev/qzYaLaqUbmFpmkVFLtkCyWoQOiG+7n0wNWMzpNvtD9ngavMwKpiPAjuC
	orKSDQlQmuC8z97IJxVbcq+gyutqll3UpAscVeFLpM0xBI7yzJSQFJSDBl57C38C0iJo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vxc5X-0000bd-09;
	Wed, 04 Mar 2026 02:35:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1vxc5V-0000bO-Hz
 for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Mar 2026 02:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:From:In-Reply-To:Subject:
 Content-Transfer-Encoding:References:Mime-Version:Cc:To:Content-Type:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2QRBYwYeKGYOX0A+C3w0+/dKAh7UOTvzYv4Spo6o19s=; b=ZuVnyk5FYz/POeoYbcAIuKB7m1
 OiOfdX3LE/p3kmCO+OzUD9z/e2gmIiDwEdnrLKrBr8vMWVFXkR8K1BnRGGk2Zz9IuR4mcahljDAi3
 F0rDiI1obN+IJAjmEp5NRbRcqTgD2p1yIQM5Pz68tHn9YsSuTKi53/7m3tsr200/7i2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:From:In-Reply-To:Subject:Content-Transfer-Encoding:
 References:Mime-Version:Cc:To:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2QRBYwYeKGYOX0A+C3w0+/dKAh7UOTvzYv4Spo6o19s=; b=N33LWGAVMgV6CJ/MB0UKjD68zp
 hZxu/wmIfn5JwRz2nc5wrdXX9RIS8Y2BrD0G4cuDB1f7U6BlhvgrL564b/DAp7IyWlhaX5JgJbgIi
 jDU/FjKzsdOF8D4Z7eeKJzvRIgJTrLsPoMITNMFagdw4oE0xsY2Kcc3eRhoI8zE0LBF4=;
Received: from sg-1-103.ptr.blmpb.com ([118.26.132.103])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vxc5V-0002cz-Jg for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Mar 2026 02:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1772591738; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=2QRBYwYeKGYOX0A+C3w0+/dKAh7UOTvzYv4Spo6o19s=;
 b=L1vYTNlfY3emjteuz+E5c2IGz8Mk3aYlMK25aaN2U8DYKlm0OjxTBV6YK8RjKmG6yW5MrO
 mdB9AzupK5hz1s5Uuo0fc77kA/TqukRV7a8DqP/G2HigqKg0aY5neu8Dw56euROaRkgQRO
 LenGXcaWjavGO45dmrX19Se3a9ZfkPet5uCy1J4rdBCwRwx+lZYUjrWjKFRM57NsRKUSF7
 EqVCUsPCpf/lVAMefRdkeQTo2FUgrCpsJb80flb/AC3QceKr2kcXNHija8yBd4uFqTIIeQ
 uS06ar58czLlXv8gn+ovmLwljDl6Txw9aKI+mH8pCmjTCZFrzKiFR7Y7Cnh3tg==
X-Original-From: ByteDance <zhangjian.3032@bytedance.com>
To: <corey@minyard.net>
Mime-Version: 1.0
References: <20260302061746.1579192-1-zhangjian.3032@bytedance.com>
 <aabnHaOxgqHOxFTl@mail.minyard.net>
X-Lms-Return-Path: <lba+269a79a78+2fbfee+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Mailer: Apple Mail (2.3776.700.51.11.4)
In-Reply-To: <aabnHaOxgqHOxFTl@mail.minyard.net>
Date: Wed, 4 Mar 2026 10:35:09 +0800
Message-Id: <FE0DB012-E8AF-4EFF-ADDB-F25870F9BC3E@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thanks for the review! I’ll send the v2 patch. Jian. > 2026年3月3日
    21:50，Corey Minyard <corey@minyard.net> 写道： > > On Mon, Mar 02, 2026
    at 02:17:46PM +0800, Jian Zhang wrote: >> A valid IPMI over SSIF response
    must contain at least three byt [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
X-Headers-End: 1vxc5V-0002cz-Jg
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
X-Rspamd-Queue-Id: 1B3121F9E9A
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:replyto,bytedance.com:email,bytedance.com:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

VGhhbmtzIGZvciB0aGUgcmV2aWV3ISAgSeKAmWxsIHNlbmQgdGhlIHYyIHBhdGNoLgoKSmlhbi4K
Cj4gMjAyNuW5tDPmnIgz5pelIDIxOjUw77yMQ29yZXkgTWlueWFyZCA8Y29yZXlAbWlueWFyZC5u
ZXQ+IOWGmemBk++8mgo+IAo+IE9uIE1vbiwgTWFyIDAyLCAyMDI2IGF0IDAyOjE3OjQ2UE0gKzA4
MDAsIEppYW4gWmhhbmcgd3JvdGU6Cj4+IEEgdmFsaWQgSVBNSSBvdmVyIFNTSUYgcmVzcG9uc2Ug
bXVzdCBjb250YWluIGF0IGxlYXN0IHRocmVlIGJ5dGVzCj4+IChOZXRGbi9MVU4sIENvbW1hbmQg
YW5kIENvbXBsZXRpb24gQ29kZSkuCj4+IAo+PiBTb21lIERNQS1vbmx5IEkyQyBjb250cm9sbGVy
cyBtYXkgcmV0dXJuIHNob3J0IHJlYWRzIGluc3RlYWQgb2YgYQo+PiBwcm9wZXIgTkFDSyB3aGVu
IHRoZSByZXNwb25zZSBpcyBub3QgcmVhZHkuIFRyZWF0IHN1Y2ggc2hvcnQgcmVhZHMKPj4gYXMg
aW5jb21wbGV0ZSBhbmQgcmV0cnkgdW50aWwgYSBmdWxsIHJlc3BvbnNlIGlzIHJlY2VpdmVkLgo+
IAo+IFdlbGwgdGhhdCdzIHVuZnJpZW5kbHkgb2YgdGhlbS4KPiAKPiBBbnl3YXksIEkgc2VlIHRo
ZSBpc3N1ZS4gIEkgd291bGQgYXNrIGEgY291cGxlIG9mIHRoaW5nczoKPiAKPiBDYW4geW91IGFk
ZCBhIGNvbW1lbnQgYmVmb3JlIHRoaXMgImlmIiBzdGF0ZW1lbnQgc28gcGVvcGxlIGluIHRoZSBm
dXR1cmUKPiBrbm93IHdoeSBpdCdzIHRoaXMgd2F5PyAgT3RoZXJ3aXNlIGl0J3MgYSBiaXQgbXlz
dGVyaW91cy4KPiAKPiBXb3VsZG4ndCB0aGUgaTJjX3NtYnVzX3JlYWRfYmxvY2tfZGF0YSgpIGlu
IGlwbWlfc3NpZl90aHJlYWQoKSBoYXZlIHRoZQo+IHNhbWUgaXNzdWU/ICBXZSBzaG91bGQgZml4
IGFsbCBvZiB0aGVzZSBpZiBzby4KPiAKPiBUaGFua3MsCj4gCj4gLWNvcmV5Cj4gCj4+IAo+PiBT
aWduZWQtb2ZmLWJ5OiBKaWFuIFpoYW5nIDx6aGFuZ2ppYW4uMzAzMkBieXRlZGFuY2UuY29tPgo+
PiAtLS0KPj4gZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgfCAyICstCj4+IDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+PiAKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9z
c2lmLmMKPj4gaW5kZXggMzdhNWNiNWM1M2YxLi42NGVlOTM5YTdhNGIgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1p
L2lwbWlfc3NpZi5jCj4+IEBAIC0xMzAwLDcgKzEzMDAsNyBAQCBzdGF0aWMgaW50IHJlYWRfcmVz
cG9uc2Uoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwgdW5zaWduZWQgY2hhciAqcmVzcCkKPj4g
d2hpbGUgKHJldHJ5X2NudCA+IDApIHsKPj4gcmV0ID0gaTJjX3NtYnVzX3JlYWRfYmxvY2tfZGF0
YShjbGllbnQsIFNTSUZfSVBNSV9SRVNQT05TRSwKPj4gcmVzcCk7Cj4+IC0gaWYgKHJldCA+IDAp
Cj4+ICsgaWYgKHJldCA+PSAzKQo+PiBicmVhazsKPj4gbXNsZWVwKFNTSUZfTVNHX01TRUMpOwo+
PiByZXRyeV9jbnQtLTsKPj4gLS0gCj4+IDIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
