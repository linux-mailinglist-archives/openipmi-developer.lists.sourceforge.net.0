Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oXAuGCi2IGow7AAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:18:00 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DAF63BD36
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:17:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=jPlpPRiG;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b="WF/x/UDs";
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=TSn6yWww;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=UAn5xjkE;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RSnobig7HgG/SyHGzFU+Ft6SxjDVa5l7fpf9tq6c0xc=; b=jPlpPRiGn4IciNKGD97LwSVOYt
	IkPmWGS4SAs7l0+hGG//Neva+QpoNex5nmZnr1XhPl1QnE1rM0mYNKZzKmOP9sY1Uioge2yqJJk07
	o8bBQXsJDbB2O1d459RW10ozAuJcWYllk7wvd1djmc0P7L4JHn5RpLaoF2ykzXa/R1jY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wUuqP-0005XB-P4;
	Wed, 03 Jun 2026 23:17:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wUuqO-0005X4-88
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:17:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wOrjAy3sfJBraT8vZndOtdFtPFK3vWth1XX7ivB6YhA=; b=WF/x/UDsYv3EMRCoCDm4TgkiIQ
 lBplK3AEp7g1Ny5tQ/Zk937JCVSDsM60s7RO8l8Q5GvVEJkSefVOz3d9yP7nUilVp+W6nBpGOLqkW
 3YCN1XswWIpnqMbMduq25YbbQNpcYsnM5xB5wjAVa9+pNYfKvmJiZKVFssz18i8+QEEc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wOrjAy3sfJBraT8vZndOtdFtPFK3vWth1XX7ivB6YhA=; b=TSn6yWwwlMw8tj2LiPcXtgu76Y
 aHACDdpCg8FvOcTQx+La1u9Mn6HOrkQCDwXIdSTmYk9XrS6eYpvSp+putnEAtUlKRDPHxsKV+1HMl
 zJ8Ru7tg9GnvXaHCzDQ1Hb3vdmI2EQ60IgW1k77GMIPiAs9bd2V7117tvsoYiWkPnKYg=;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wUuqK-0005i3-KG for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:17:49 +0000
Received: by mail-oi1-f178.google.com with SMTP id
 5614622812f47-4863eae4526so32106b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Jun 2026 16:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1780528658; x=1781133458; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wOrjAy3sfJBraT8vZndOtdFtPFK3vWth1XX7ivB6YhA=;
 b=UAn5xjkESoYhcpgTqeNTHR2TezqiiCNYrCAk9r/pIWEtoBZUnbneUsbd+yz7NMLXem
 5gNsrv3UaI+0eKpBgAboJe5Zsa85XJM5UcI90NudtHVW8VZvD107iwgkrgyE0FFjrpWN
 EhG0EsP+OBuJhYmOkc6mqvc8JATPokGRPmXiztH1jOGHE5PYhDZs4LKlgqhIFFW4X3GF
 54RMxbq00YUPU/TWF61jBQbgYC4NnolCXwhGpSbEh+QeCIFpKD98JjFz4xuczzXR8NDg
 ohw9w8+fii5hw9ywBix2+7iQc4YOXsR0tQWFLNBH4C7mPiKQqiuAEwkg5Ixt1LljHzt2
 zlUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780528658; x=1781133458;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wOrjAy3sfJBraT8vZndOtdFtPFK3vWth1XX7ivB6YhA=;
 b=Ucc1BwyiUNw98tb9Sg4n9nKhI77YOwPQZB1Eacs/cr/1ATNWfZCkt7TD65P1+riukn
 2Hfogwi1WTcXLf2v0VO6wvjegHpoEkrKzA0blV3rDUB/b5l/aCtAJvHLta3+duN3VrNx
 Q+7Anvx81HgCcMzFBAoFTR14BWY9/4tQzEGEabFFkJIjKsY9aRdV0TbiHwGJraFwRvSB
 d7y5tcso/FULJVwtFstTOPhkIr0vWAgIL5jkf19are8PfvhjKcBSBpmWsMEZaR4Ke/XP
 2fnxXEWwuYFSJ6DCFWXA6223SbvxT+KEV8sraLlVt8P2qfIXjOuQf/miz5Bps3J8+hO8
 vhpg==
X-Forwarded-Encrypted: i=1;
 AFNElJ8YYajjn41qBBK8DJ2qXmuirlkaSKB8Je4J2f0KwLaCjAkq1IfM+MoTW5/NEE3LUYkLTANWASoiFzLiXp03O28Lq4k=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz/nK6O8sqst6AFQuh7GWNyEw3LMFjBjeul4w7EEAqjhcbSYw6A
 UMc5CrkCDbEJidZweT3UtKxnmcTozt+EGDaulrqKAmJ2c87nkUVIlFLkNdZTKwYqPSE=
X-Gm-Gg: Acq92OF6QTNgEJI2ir/6hWok3Oa5FKpcdJYBSYzd8dOfJmWetpNbUZOYOaarZIKsfsu
 W/sQ1qBTFaqmEfp+cNX/YU/61HTRo2rL67j8GvR5zU4PjuJ4rO2w4zUwrbbUl0vRc7+Wd1t+42e
 IS+QR5LPh+3xFyF836zQg0CAHLiU6suJ9fY0tJKZeYLCErut9CD7cEP8id6+gXSXwl8S/YH16qz
 y1uE5Oz0bZcaCWq1acrWLaQY48HLN7V+xRa4M4bolskF1ohNTeCjslr00tfTXlWGFtxLaKn7klj
 AT5s7JzaxUxlZEwwm5Za9qBpfIccr/mwdA8H+z/CvBNKS9uRXT3+5zPaV7dbRvFXPflbQn+rkFf
 axIj0xsxB7+c0wcD5lK8gNPXUucEsWbEEsbDGKQzxq9K0dHaCp3NMKj6ro5aGTinyy5saTaycAD
 7kUnh6BZ6VvllRi1CDUDtB4w4SclM3/tS+KLH0wPSr1rpqR5Uaqqjk5Kg8JODjpjeodfM4TPqul
 yVLdRVJmPfq8utJ4FYXAVASMSPfCp3ZhwTF
X-Received: by 2002:a05:6808:1802:b0:47b:c2a2:1c6c with SMTP id
 5614622812f47-4865a9a59c9mr3230177b6e.16.1780528658404; 
 Wed, 03 Jun 2026 16:17:38 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:144e:c181:b1d6:32f9])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-4865b91a9d2sm2918758b6e.12.2026.06.03.16.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2026 16:17:37 -0700 (PDT)
Date: Wed, 3 Jun 2026 18:17:34 -0500
From: Corey Minyard <corey@minyard.net>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <aiC2Dj-Mes69Ltf2@mail.minyard.net>
References: <20260603192511.6869-1-rosenp@gmail.com>
 <aiCwfoG0uQf0aSCK@mail.minyard.net>
 <aiCxRPJBfskDx2Pn@mail.minyard.net>
 <CAKxU2N-iq7B9pjtJ6pjZY6qQz4hkwKNhHgEv3uifV9zHev2SFA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N-iq7B9pjtJ6pjZY6qQz4hkwKNhHgEv3uifV9zHev2SFA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 03, 2026 at 04:05:54PM -0700, Rosen Penev wrote:
 > On Wed, Jun 3, 2026 at 3:57 PM Corey Minyard <corey@minyard.net> wrote:
 > > > > On Wed, Jun 03, 2026 at 05:53:56PM -0500, Corey Minyard w [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
X-Headers-End: 1wUuqK-0005i3-KG
Subject: Re: [Openipmi-developer] [PATCH] ipmi: si: Use platform_get_irq()
 to retrieve interrupt
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
Reply-To: corey@minyard.net
Cc: "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:rosenp@gmail.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,minyard.net:email,minyard.net:from_mime,minyard.net:replyto,io.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A4DAF63BD36

T24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDQ6MDU6NTRQTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3Jv
dGU6Cj4gT24gV2VkLCBKdW4gMywgMjAyNiBhdCAzOjU34oCvUE0gQ29yZXkgTWlueWFyZCA8Y29y
ZXlAbWlueWFyZC5uZXQ+IHdyb3RlOgo+ID4KPiA+IE9uIFdlZCwgSnVuIDAzLCAyMDI2IGF0IDA1
OjUzOjU2UE0gLTA1MDAsIENvcmV5IE1pbnlhcmQgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgSnVuIDAz
LCAyMDI2IGF0IDEyOjI1OjExUE0gLTA3MDAsIFJvc2VuIFBlbmV2IHdyb3RlOgo+ID4gPiA+IFVz
ZSBwbGF0Zm9ybV9nZXRfaXJxKCkgdG8gcmV0cmlldmUgdGhlIGludGVycnVwdCByZXNvdXJjZSBp
bnN0ZWFkIG9mCj4gPiA+ID4gZGlyZWN0bHkgcGFyc2luZyBhbmQgbWFwcGluZyB0aGUgT0Ygbm9k
ZSB2aWEgaXJxX29mX3BhcnNlX2FuZF9tYXAoKS4KPiA+ID4gPiBUaGlzIGlzIHRoZSBzdGFuZGFy
ZCBwYXR0ZXJuIGZvciBwbGF0Zm9ybSBkZXZpY2VzLgo+ID4gPiA+IGlycV9vZl9wYXJzZV9hbmRf
bWFwKCkgcmVxdWlyZXMgaXJlX2Rpc3Bvc2VfbWFwcGluZygpLCB3aGljaCBpcyBtaXNzaW5nLgo+
ID4gPiA+Cj4gPiA+ID4gQXNzaXN0ZWQtYnk6IEFudGlncmF2aXR5OkdlbWluaS0zLjUtRmxhc2gK
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiA+
ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9wbGF0Zm9ybS5jIHwg
MiArLQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3Np
X3BsYXRmb3JtLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKPiA+ID4g
PiBpbmRleCBmYjZlMzU5YWU0OTQuLmUxMGI1ZDhhZjA5MiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKPiA+ID4gPiArKysgYi9kcml2ZXJz
L2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKPiA+ID4gPiBAQCAtMjc2LDcgKzI3Niw3IEBA
IHN0YXRpYyBpbnQgb2ZfaXBtaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ID4gPiA+ICAgICBpby5yZWdzcGFjaW5nICAgPSByZWdzcGFjaW5nID8gYmUzMl90b19jcHVwKHJl
Z3NwYWNpbmcpIDogREVGQVVMVF9SRUdTUEFDSU5HOwo+ID4gPiA+ICAgICBpby5yZWdzaGlmdCAg
ICAgPSByZWdzaGlmdCA/IGJlMzJfdG9fY3B1cChyZWdzaGlmdCkgOiAwOwo+ID4gPiA+Cj4gPiA+
ID4gLSAgIGlvLmlycSAgICAgICAgICA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKHBkZXYtPmRldi5v
Zl9ub2RlLCAwKTsKPiA+ID4gPiArICAgaW8uaXJxICAgICAgICAgID0gcGxhdGZvcm1fZ2V0X2ly
cShwZGV2LCAwKTsKPiA+ID4KPiA+ID4gVGhpcyBzaG91bGQgYmUgc29tZXRoaW5nIGxpa2U6Cj4g
PiA+Cj4gPiA+ICAgICAgIGlvLmlycSA9IHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwocGRldiwg
MCk7Cj4gPiA+ICAgICAgIGlmIChpby5pcnEgPiAwKQo+ID4gPiAgICAgICAgICAgICAgIGlvLmly
cV9zZXR1cCA9IGlwbWlfc3RkX2lycV9zZXR1cDsKPiA+ID4gICAgICAgZWxzZQo+ID4gPiAgICAg
ICAgICAgICAgIGlvLmlycSA9IDA7Cj4gPiA+Cj4gPiA+IHJpZ2h0Pwo+ID4KPiA+IE9vcHMsIGN1
dCBhbmQgcGFzdGUgZXJyb3IsIHRyeToKPiA+Cj4gPiAgICAgICAgIGlvLmlycSA9IHBsYXRmb3Jt
X2dldF9pcnFfb3B0aW9uYWwocGRldiwgMCk7Cj4gPiAgICAgICAgIGlmIChpby5pcnEgPCAwKQo+
ID4gICAgICAgICAgICAgICAgIGlvLmlycSA9IDA7Cj4gSSBkb24ndCB0aGluayB0aGF0IGlmIGlz
IGFwcHJvcHJpYXRlLgoKQ2FuIHBsYXRmb3JtX2dldF9pcnFbX29wdGlvbmFsXSgpIHJldHVybiA8
IDA/ICBUaGUgZHJpdmVyIHN0aWxsIGhhcyB0bwp3b3JrIGV2ZW4gaWYgdGhlcmUgaXMgbm8gaW50
ZXJydXB0IHNwZWNpZmllZC4KCi1jb3JleQoKPiA+Cj4gPiBUaGlzIGp1c3QgZGlzYWJsZXMgdGhl
IGludGVycnVwdCBpZiBpdCBjYW4ndCBnZXQgaXQuCj4gPgo+ID4gPgo+ID4gPiAtY29yZXkKPiA+
ID4KPiA+ID4gPiAgICAgaW8uZGV2ICAgICAgICAgID0gJnBkZXYtPmRldjsKPiA+ID4gPgo+ID4g
PiA+ICAgICBkZXZfZGJnKCZwZGV2LT5kZXYsICJhZGRyIDB4JWx4IHJlZ3NpemUgJWQgc3BhY2lu
ZyAlZCBpcnEgJWRcbiIsCj4gPiA+ID4gLS0KPiA+ID4gPiAyLjU0LjAKPiA+ID4gPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1k
ZXZlbG9wZXIK
