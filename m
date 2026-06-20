Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jfrVK01QOWrjqQcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 22 Jun 2026 17:10:05 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C67886B09C6
	for <lists+openipmi-developer@lfdr.de>; Mon, 22 Jun 2026 17:10:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b="K/eoxVdk";
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=SoPoTi3E;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=Q3sKsdeB;
	dkim=fail ("body hash did not verify") header.d=linux.dev header.s=key1 header.b=xIkAbuqG;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0lsf5E5s80DtaezB93h+bq6JkZz5DFkXNE396eGbnfM=; b=K/eoxVdkVKrscOwnAdsLiB9ta1
	0aOwzLCWjjimiXTv05ZBn7BXbNAcKIBFhlh5w3MWbrW0u6uB+hdmr3lnL+GOtDTTvIbfTdD08mqg+
	IF6WtkK4gl7d9H1TqIXbaOS5oUGLUGMuW7sFU3OBXceLgtr8XdIpQ4lqxq73PknABlos=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wbgHW-00013g-OZ;
	Mon, 22 Jun 2026 15:09:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zenghui.yu@linux.dev>) id 1wb4lh-0002sC-WD
 for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 23:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ffNS15lFq3TC2UA1okQjo+eN+2l6iRu6XRsdlBA3/FE=; b=SoPoTi3Eh4xywlQ7Y9dSRKXaHr
 vpkA9jDkhF4YUrwVpE/M4hZKAf0L/LHt/LoDndpoDxHUZaXzL3tr1fhbxhdgoySfaMOK6K8EAsi0r
 K+h/zquENcV6iMxWBwxQvr/YoG/Bg+JpVfWlthtRihIa58tfqZed3Ouprb9ghYwTfTXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ffNS15lFq3TC2UA1okQjo+eN+2l6iRu6XRsdlBA3/FE=; b=Q3sKsdeB4wtU23tnURxA/J92AI
 KdbFeIMSFbFKUT+8tFt96wKFlGmVtUGL+BfQXWckM1epG1hBlyP0NiWIOWqHxEpQEWYk72D6H7B1y
 WMgvh+pY5cqwtE/u5UWfdS4gJjQOx0qlo3M5FbFhcIi18PBs3jCv0NwWQEwYrTna1LpE=;
Received: from out-187.mta1.migadu.com ([95.215.58.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wb4lg-00048p-1z for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 23:06:29 +0000
Message-ID: <54430fa8-00ac-47b7-a8e1-b2843581ffc5@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1781996781;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ffNS15lFq3TC2UA1okQjo+eN+2l6iRu6XRsdlBA3/FE=;
 b=xIkAbuqG322OG7rmC8cRgpBhxqFbaphCw/K21uexGUQod64yVkrSAglEHA5UaSOalVHbaw
 55seWGT4eUo3ZJ8aNIW/I1rU18gWEYVrf4Ql1Schpiks7HlbBBrfUjeS57lhM/aoI2d0KK
 0Gja4XRCTkXEcAcl+eUU3jJlSFkOaYk=
Date: Sun, 21 Jun 2026 07:06:04 +0800
MIME-Version: 1.0
To: Randy Dunlap <rdunlap@infradead.org>
References: <20260620122747.7902-1-zenghui.yu@linux.dev>
 <626477f6-8bda-4cac-8341-c720fd279ba3@infradead.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Zenghui Yu <zenghui.yu@linux.dev>
In-Reply-To: <626477f6-8bda-4cac-8341-c720fd279ba3@infradead.org>
X-Migadu-Flow: FLOW_OUT
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/21/26 2:40 AM, Randy Dunlap wrote: > > > On 6/20/26 5:27
 AM, Zenghui Yu wrote: > > The correct path of the "hotmod" module parameter
 should be > > /sys/module/ipmi_si/parameters/hotmod. Fix it. > [...] 
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
X-Headers-End: 1wb4lg-00048p-1z
X-Mailman-Approved-At: Mon, 22 Jun 2026 15:09:49 +0000
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
X-Spamd-Result: default: False [0.09 / 15.00];
	DATE_IN_PAST(1.00)[40];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rdunlap@infradead.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:skhan@linuxfoundation.org,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[zenghui.yu@linux.dev,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,linux.dev:s=key1];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,linux.dev:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zenghui.yu@linux.dev,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,linux.dev:mid,linux.dev:from_mime,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C67886B09C6

T24gNi8yMS8yNiAyOjQwIEFNLCBSYW5keSBEdW5sYXAgd3JvdGU6Cj4gCj4gCj4gT24gNi8yMC8y
NiA1OjI3IEFNLCBaZW5naHVpIFl1IHdyb3RlOgo+ID4gVGhlIGNvcnJlY3QgcGF0aCBvZiB0aGUg
ImhvdG1vZCIgbW9kdWxlIHBhcmFtZXRlciBzaG91bGQgYmUKPiA+IC9zeXMvbW9kdWxlL2lwbWlf
c2kvcGFyYW1ldGVycy9ob3Rtb2QuIEZpeCBpdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBaZW5n
aHVpIFl1IDx6ZW5naHVpLnl1QGxpbnV4LmRldj4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24v
ZHJpdmVyLWFwaS9pcG1pLnJzdCB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBUaGVyZSBhcmUgc2V2ZXJhbCBvdGhlciBwbGFjZXMg
dGhhdCB1c2UgL3N5cy9tb2R1bGVzLyBpbnN0ZWFkIG9mCj4gL3N5cy9tb2R1bGUvLgoKWXVwLiBU
aGVyZSBhcmU6CgpEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvaXBtaS5yc3Q6VGhpcyBpcyBkb25l
IHVzaW5nIC9zeXMvbW9kdWxlcy9pcG1pX3NpL3BhcmFtZXRlcnMvaG90bW9kLCB3aGljaCBpcyBh
CkRvY3VtZW50YXRpb24vcHJvY2Vzcy9kZWJ1Z2dpbmcva2dkYi5yc3Q6Y29uZmlnIHN0cmluZyB0
byBgYC9zeXMvbW9kdWxlLzxkcml2ZXI+L3BhcmFtZXRlci88b3B0aW9uPmBgLiBUaGUgZHJpdmVy
CkRvY3VtZW50YXRpb24vdHJhbnNsYXRpb25zL3poX0NOL2FkbWluLWd1aWRlL21tL2RhbW9uL2xy
dV9zb3J0LnJzdDrlj4LmlbDvvIzmiJbogIXlnKggYGAvc3lzL21vZHVsZXMvZGFtb25fbHJ1X3Nv
cnQvcGFyYW1ldGVycy88cGFyYW1ldGVyPmBgIOWGmeWFpeato+ehrueahApEb2N1bWVudGF0aW9u
L3RyYW5zbGF0aW9ucy96aF9DTi9hZG1pbi1ndWlkZS9tbS9kYW1vbi9scnVfc29ydC5yc3Q6ICAg
ICMgY2QgL3N5cy9tb2R1bGVzL2RhbW9uX2xydV9zb3J0L3BhcmFtZXRlcnMKRG9jdW1lbnRhdGlv
bi90cmFuc2xhdGlvbnMvemhfVFcvYWRtaW4tZ3VpZGUvbW0vZGFtb24vbHJ1X3NvcnQucnN0OuWP
g+aVuO+8jOaIluiAheWcqCBgYC9zeXMvbW9kdWxlcy9kYW1vbl9scnVfc29ydC9wYXJhbWV0ZXJz
LzxwYXJhbWV0ZXI+YGAg5a+r5YWl5q2j56K655qECkRvY3VtZW50YXRpb24vdHJhbnNsYXRpb25z
L3poX1RXL2FkbWluLWd1aWRlL21tL2RhbW9uL2xydV9zb3J0LnJzdDogICAgIyBjZCAvc3lzL21v
ZHVsZXMvZGFtb25fbHJ1X3NvcnQvcGFyYW1ldGVycwpkcml2ZXJzL2FjcGkvc3lzZnMuYzogKiAv
c3lzL21vZHVsZXMvYWNwaS9wYXJhbWV0ZXJzL2RlYnVnX2xheWVyCmRyaXZlcnMvYWNwaS9zeXNm
cy5jOiAqIC9zeXMvbW9kdWxlcy9hY3BpL3BhcmFtZXRlcnMvZGVidWdfbGV2ZWwKZHJpdmVycy9h
Y3BpL3N5c2ZzLmM6ICogL3N5cy9tb2R1bGVzL2FjcGkvcGFyYW1ldGVycy90cmFjZV9tZXRob2Rf
bmFtZQpkcml2ZXJzL2FjcGkvc3lzZnMuYzogKiAvc3lzL21vZHVsZXMvYWNwaS9wYXJhbWV0ZXJz
L3RyYWNlX3N0YXRlCmRyaXZlcnMvYWNwaS9zeXNmcy5jOiAqIC9zeXMvbW9kdWxlcy9hY3BpL3Bh
cmFtZXRlcnMvdHJhY2VfZGVidWdfbGF5ZXIKZHJpdmVycy9hY3BpL3N5c2ZzLmM6ICogL3N5cy9t
b2R1bGVzL2FjcGkvcGFyYW1ldGVycy90cmFjZV9kZWJ1Z19sZXZlbApkcml2ZXJzL2FjcGkvc3lz
ZnMuYzovKiAvc3lzL21vZHVsZXMvYWNwaS9wYXJhbWV0ZXJzL2FtbF9kZWJ1Z19vdXRwdXQgKi8K
ZHJpdmVycy9iYXNlL21vZHVsZS5jOiAgICAgICAgICAvKiBMb29rdXAgb3IgY3JlYXRlIGJ1aWx0
LWluIG1vZHVsZSBlbnRyeSBpbiAvc3lzL21vZHVsZXMgKi8KZHJpdmVycy9ncGliL2xwdm9fdXNi
X2dwaWIvbHB2b191c2JfZ3BpYi5jOiAqICAgICAgICAgT24gdGhlIGZseTogZWNobyB7MCwxLDJ9
ID4gL3N5cy9tb2R1bGVzL2xwdm9fdXNiX2dwaWIvcGFyYW1ldGVycy9kZWJ1Zwpmcy9idHJmcy9z
eXNmcy5jOi8qIFNldCBwZXJtcyB0byAwLCBkaXNhYmxlIC9zeXMvbW9kdWxlL2J0cmZzL3BhcmFt
ZXRlci9yZWFkX3BvbGljeSBpbnRlcmZhY2UuICovCmZzL2NhY2hlZmlsZXMvS2NvbmZpZzogICAg
ZW5hYmxlZCBieSBzZXR0aW5nIGJpdHMgaW4gL3N5cy9tb2R1bGVzL2NhY2hlZmlsZXMvcGFyYW1l
dGVyL2RlYnVnIG9yCmtlcm5lbC9wYXJhbXMuYzovKiBzeXNmcyBvdXRwdXQgaW4gL3N5cy9tb2R1
bGVzL1hZWi9wYXJhbWV0ZXJzLyAqLwoKPiAKPiBXb3VsZCB5b3UgY2FyZSB0byBmaXggdGhvc2Ug
YWxzbz8KCkkgcGxhbiB0byBmaXggdGhlbSBieSBzdWJzeXN0ZW0gbGlrZToKCmh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnLzIwMjYwNjExMTQyNTE4Ljc3MzQzLTEtemVuZ2h1aS55dUBsaW51eC5kZXYK
ClRoYW5rcywKWmVuZ2h1aQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
