Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dIPJBS8rN2ppJwcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sun, 21 Jun 2026 02:07:11 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 367826A9E83
	for <lists+openipmi-developer@lfdr.de>; Sun, 21 Jun 2026 02:07:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b="IZa/jKqY";
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=GWq5QW6a;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=OzR9cNI2;
	dkim=fail ("body hash did not verify") header.d=infradead.org header.s=bombadil.20210309 header.b=XSZemsJw;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=infradead.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQagWRuT6sYkp0PwgdiXvhyGLQ0nDBEPgR5UdNAaKCA=; b=IZa/jKqYq28ODUUekl1UhfODFR
	CJftzI/MixRu2fL/Z28J1zvHZtRFrHUF3hxdWYXHVC0KQbWp1OXkw+bg7tlBigDtNIVbvqOqyfhfz
	p2gsmGNnBz56EFu5kxSik4V7dXgIAw9L3iJpex4LmGWPTzyWoJ9DE0S35NJ08STW/atQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wb5iA-00057x-7Q;
	Sun, 21 Jun 2026 00:06:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1wb5i9-00057r-Oq
 for openipmi-developer@lists.sourceforge.net;
 Sun, 21 Jun 2026 00:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nt//4b9HvMKZXrBjRYnXvcqaO8zaeCMh8zEgavgMWI8=; b=GWq5QW6aJWzwJ+qvkwh/hA6phk
 lGyAhVvyd9qN9xJfjPml+auL1EPOvVgXT4nStaQiSqVEXS3fhldPtYXc+2r48niGFdHm8trRocIpO
 kOc/TuOpx9TMO7btBAc+U/w9sKKpVic0mKMM4h+gCwjuRdJIlff+/bck1bSFaypFHWKs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nt//4b9HvMKZXrBjRYnXvcqaO8zaeCMh8zEgavgMWI8=; b=OzR9cNI2tx90MlEJV+CIB/nVcL
 xnW6VWb8Yzlqt/VAAHiB3KP2FAO7jb1Ju9yKkxAU9hR7ClRgxP07uWDY8A8DnzLegW+uy58clEXLB
 J7Tu3bNw69vCxjrADJCQwLnnxNyNGzjx+J3ha7HrV1mKxDnTYAo/rNtf4CyXIYVeMlZE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wb5i9-0007CM-29 for openipmi-developer@lists.sourceforge.net;
 Sun, 21 Jun 2026 00:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=nt//4b9HvMKZXrBjRYnXvcqaO8zaeCMh8zEgavgMWI8=; b=XSZemsJwNpnX7FPTxyvsuKnGuP
 aD8KDcaA3Lly1mEXBSTbjE3BHXoacfSBWTIDdd/TIjXzseIIDKbfpMSQGT7KUy5r0Y50CRltH0NhH
 q1+6USywiR5HiuEhwQGEJWwBXCPtgjNEmTquCxqrxjlq+q6AYsiZQFpvwxqhSAE9W+MHnmsbV4rd9
 fES5a2uG7EzNK88FgihDI0Zjp5DHRJik4sFUrna1p4U1tAP6J/WrG7srqHmObxxNqmW5q5Ay2AjWb
 uABxCkLQKZuwyySHHR2xBsx1I8dvTxNoxGcCZtkuVQabWToNRzhvpzKeb+aw6CCJTGXv/NHf3zJRK
 WSet8VeQ==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
 id 1wb5i3-00000003eCC-1t7F; Sun, 21 Jun 2026 00:06:47 +0000
Message-ID: <66999bde-cc8f-4f7b-a87f-d448efaee8fc@infradead.org>
Date: Sat, 20 Jun 2026 17:06:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zenghui Yu <zenghui.yu@linux.dev>
References: <20260620122747.7902-1-zenghui.yu@linux.dev>
 <626477f6-8bda-4cac-8341-c720fd279ba3@infradead.org>
 <54430fa8-00ac-47b7-a8e1-b2843581ffc5@linux.dev>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <54430fa8-00ac-47b7-a8e1-b2843581ffc5@linux.dev>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/20/26 4:06 PM, Zenghui Yu wrote: > On 6/21/26 2:40 AM, 
 Randy Dunlap wrote: >> >> >> On 6/20/26 5:27 AM, Zenghui Yu wrote: >>> The
 correct path of the "hotmod" module parameter should be >>> /sys/ [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: infradead.org]
X-Headers-End: 1wb5i9-0007CM-29
Subject: Re: [Openipmi-developer] [PATCH] docs: ipmi: Fix path of the
 "hotmod" module parameter
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
Cc: corbet@lwn.net, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 corey@minyard.net, skhan@linuxfoundation.org,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[rdunlap@infradead.org,openipmi-developer-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zenghui.yu@linux.dev,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:skhan@linuxfoundation.org,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,infradead.org:s=bombadil.20210309];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,infradead.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,infradead.org:mid,infradead.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 367826A9E83

CgpPbiA2LzIwLzI2IDQ6MDYgUE0sIFplbmdodWkgWXUgd3JvdGU6Cj4gT24gNi8yMS8yNiAyOjQw
IEFNLCBSYW5keSBEdW5sYXAgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDYvMjAvMjYgNToyNyBBTSwgWmVu
Z2h1aSBZdSB3cm90ZToKPj4+IFRoZSBjb3JyZWN0IHBhdGggb2YgdGhlICJob3Rtb2QiIG1vZHVs
ZSBwYXJhbWV0ZXIgc2hvdWxkIGJlCj4+PiAvc3lzL21vZHVsZS9pcG1pX3NpL3BhcmFtZXRlcnMv
aG90bW9kLiBGaXggaXQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogWmVuZ2h1aSBZdSA8emVuZ2h1
aS55dUBsaW51eC5kZXY+Cj4+PiAtLS0KPj4+ICBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvaXBt
aS5yc3QgfCAyICstCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4+Cj4+IFRoZXJlIGFyZSBzZXZlcmFsIG90aGVyIHBsYWNlcyB0aGF0IHVzZSAvc3lz
L21vZHVsZXMvIGluc3RlYWQgb2YKPj4gL3N5cy9tb2R1bGUvLgo+IAo+IFl1cC4gVGhlcmUgYXJl
Ogo+IAo+IERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9pcG1pLnJzdDpUaGlzIGlzIGRvbmUgdXNp
bmcgL3N5cy9tb2R1bGVzL2lwbWlfc2kvcGFyYW1ldGVycy9ob3Rtb2QsIHdoaWNoIGlzIGEKPiBE
b2N1bWVudGF0aW9uL3Byb2Nlc3MvZGVidWdnaW5nL2tnZGIucnN0OmNvbmZpZyBzdHJpbmcgdG8g
YGAvc3lzL21vZHVsZS88ZHJpdmVyPi9wYXJhbWV0ZXIvPG9wdGlvbj5gYC4gVGhlIGRyaXZlcgo+
IERvY3VtZW50YXRpb24vdHJhbnNsYXRpb25zL3poX0NOL2FkbWluLWd1aWRlL21tL2RhbW9uL2xy
dV9zb3J0LnJzdDrlj4LmlbDvvIzmiJbogIXlnKggYGAvc3lzL21vZHVsZXMvZGFtb25fbHJ1X3Nv
cnQvcGFyYW1ldGVycy88cGFyYW1ldGVyPmBgIOWGmeWFpeato+ehrueahAo+IERvY3VtZW50YXRp
b24vdHJhbnNsYXRpb25zL3poX0NOL2FkbWluLWd1aWRlL21tL2RhbW9uL2xydV9zb3J0LnJzdDog
ICAgIyBjZCAvc3lzL21vZHVsZXMvZGFtb25fbHJ1X3NvcnQvcGFyYW1ldGVycwo+IERvY3VtZW50
YXRpb24vdHJhbnNsYXRpb25zL3poX1RXL2FkbWluLWd1aWRlL21tL2RhbW9uL2xydV9zb3J0LnJz
dDrlj4PmlbjvvIzmiJbogIXlnKggYGAvc3lzL21vZHVsZXMvZGFtb25fbHJ1X3NvcnQvcGFyYW1l
dGVycy88cGFyYW1ldGVyPmBgIOWvq+WFpeato+eiuueahAo+IERvY3VtZW50YXRpb24vdHJhbnNs
YXRpb25zL3poX1RXL2FkbWluLWd1aWRlL21tL2RhbW9uL2xydV9zb3J0LnJzdDogICAgIyBjZCAv
c3lzL21vZHVsZXMvZGFtb25fbHJ1X3NvcnQvcGFyYW1ldGVycwo+IGRyaXZlcnMvYWNwaS9zeXNm
cy5jOiAqIC9zeXMvbW9kdWxlcy9hY3BpL3BhcmFtZXRlcnMvZGVidWdfbGF5ZXIKPiBkcml2ZXJz
L2FjcGkvc3lzZnMuYzogKiAvc3lzL21vZHVsZXMvYWNwaS9wYXJhbWV0ZXJzL2RlYnVnX2xldmVs
Cj4gZHJpdmVycy9hY3BpL3N5c2ZzLmM6ICogL3N5cy9tb2R1bGVzL2FjcGkvcGFyYW1ldGVycy90
cmFjZV9tZXRob2RfbmFtZQo+IGRyaXZlcnMvYWNwaS9zeXNmcy5jOiAqIC9zeXMvbW9kdWxlcy9h
Y3BpL3BhcmFtZXRlcnMvdHJhY2Vfc3RhdGUKPiBkcml2ZXJzL2FjcGkvc3lzZnMuYzogKiAvc3lz
L21vZHVsZXMvYWNwaS9wYXJhbWV0ZXJzL3RyYWNlX2RlYnVnX2xheWVyCj4gZHJpdmVycy9hY3Bp
L3N5c2ZzLmM6ICogL3N5cy9tb2R1bGVzL2FjcGkvcGFyYW1ldGVycy90cmFjZV9kZWJ1Z19sZXZl
bAo+IGRyaXZlcnMvYWNwaS9zeXNmcy5jOi8qIC9zeXMvbW9kdWxlcy9hY3BpL3BhcmFtZXRlcnMv
YW1sX2RlYnVnX291dHB1dCAqLwo+IGRyaXZlcnMvYmFzZS9tb2R1bGUuYzogICAgICAgICAgLyog
TG9va3VwIG9yIGNyZWF0ZSBidWlsdC1pbiBtb2R1bGUgZW50cnkgaW4gL3N5cy9tb2R1bGVzICov
Cj4gZHJpdmVycy9ncGliL2xwdm9fdXNiX2dwaWIvbHB2b191c2JfZ3BpYi5jOiAqICAgICAgICAg
T24gdGhlIGZseTogZWNobyB7MCwxLDJ9ID4gL3N5cy9tb2R1bGVzL2xwdm9fdXNiX2dwaWIvcGFy
YW1ldGVycy9kZWJ1Zwo+IGZzL2J0cmZzL3N5c2ZzLmM6LyogU2V0IHBlcm1zIHRvIDAsIGRpc2Fi
bGUgL3N5cy9tb2R1bGUvYnRyZnMvcGFyYW1ldGVyL3JlYWRfcG9saWN5IGludGVyZmFjZS4gKi8K
PiBmcy9jYWNoZWZpbGVzL0tjb25maWc6ICAgIGVuYWJsZWQgYnkgc2V0dGluZyBiaXRzIGluIC9z
eXMvbW9kdWxlcy9jYWNoZWZpbGVzL3BhcmFtZXRlci9kZWJ1ZyBvcgo+IGtlcm5lbC9wYXJhbXMu
YzovKiBzeXNmcyBvdXRwdXQgaW4gL3N5cy9tb2R1bGVzL1hZWi9wYXJhbWV0ZXJzLyAqLwo+IAo+
Pgo+PiBXb3VsZCB5b3UgY2FyZSB0byBmaXggdGhvc2UgYWxzbz8KPiAKPiBJIHBsYW4gdG8gZml4
IHRoZW0gYnkgc3Vic3lzdGVtIGxpa2U6Cj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvMjAy
NjA2MTExNDI1MTguNzczNDMtMS16ZW5naHVpLnl1QGxpbnV4LmRldgoKR3JlYXQuIFRoYW5rcy4K
Ci0tIAp+UmFuZHkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
