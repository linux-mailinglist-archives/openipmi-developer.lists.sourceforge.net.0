Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jR0tEM1eIWrkFAEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 13:17:33 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CEC63F594
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 13:17:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=UycAx0Fe;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=nRLS6eIY;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=SvVqeh98;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=R+eWwvHE;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QYuRD4kJA++WdrWBod5wH/zJS+NbnKk2qzirbjh/pnw=; b=UycAx0FetnSgu0FKc3voUzdfD2
	YAae5CQAT914KGmc0WQoC+WO3VBJ4q5WLaXsmYVcoehTsnm8Vj0pl+tf8HAMJZWg4g4v2Y4LiSzDO
	34mC6ttFHYUxnlng2RC79XYK8gT95pb5Grs6elsm9Ep3ztHYcrnU3V5RRuUVVMGqOPYw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wV64e-0000wA-Ac;
	Thu, 04 Jun 2026 11:17:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wV64d-0000vz-Hd
 for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Jun 2026 11:17:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KPg/SEgmYFArpw8Vetv95NBJDkKqeptMKU5Z6y9va4=; b=nRLS6eIYxivx/yQ5JbSnxCSLGx
 5H03X4PMNNt1FodBKrh/gzr+GTwUzVQOFcHBNbrFVkHLrMS9etUhJXHExAo9sxObQ4DVgZkUa2rjo
 6iE6nJZO0O8x70ECE7Hs7zgA9WrSG0i4C5H7nafvEnvMiSrm2cC0vMmFb9Jhyi/mYt4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6KPg/SEgmYFArpw8Vetv95NBJDkKqeptMKU5Z6y9va4=; b=SvVqeh98ON2V8hJSBVb0ZYwQRS
 9NXGPkqfvCfTP9zgkCcniXDroS6wQoBC22rLRYtYNPwh3YEUboA/qDcr24xtOHYnJlwL+bAFAO+CA
 HrfGPJKlKPXCLXNY22q2AHpWNgpg2TtjstyV/Gky6mVp1VXnSLQdMMwm9o5nw6P6ulkU=;
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wV64c-0005c9-0Q for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Jun 2026 11:17:20 +0000
Received: by mail-oi1-f173.google.com with SMTP id
 5614622812f47-4859b1fc7a8so313635b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 04 Jun 2026 04:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1780571833; x=1781176633; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6KPg/SEgmYFArpw8Vetv95NBJDkKqeptMKU5Z6y9va4=;
 b=R+eWwvHE4JcWc1MxYBezg4XYl9zzQ1Aocrz1r3PGI3jO680boQ1/uEzgo2vnKexBSx
 vxMsNhm0C4yQeR52lCA93mNibls8/2EDGJx5lY7ZwYqiZvmaKMQ0hv1+fE5FrZufaPva
 1ym1tuDFyzOWVNAcyf35NCv0cCqbiykybU93z0tcXypWDjLW8VOQEilBL93OdG2Fn+Wq
 DKLpzxOcNJgKtm2v3uoZaDfFKocAi0bLtRco2HyBcMCrPdf6xCODxwoe1Z6G3iWDnfyN
 bv5hGn+peh9OeNgw+ZlB1kRLBcQ6I1PSxCghoEx20If+KYeBszzYREt/wesOdiclmDSp
 tiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780571833; x=1781176633;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6KPg/SEgmYFArpw8Vetv95NBJDkKqeptMKU5Z6y9va4=;
 b=nTCBu912/O6uFcRXnW+vyjySjug5UUSl6JTrIyKPiMAotMOSBbNwBdd+v+R6d+mPBX
 tk4veIvaXaeSEW/pjuadMoo3Sa/XG4nSIkqWFwCEM2w/mJYXGnrbBO0YMuxASVAWP4tt
 tuDNWQh8XTBnLRsePfm0rXMh1Nkh0U8E9c/UdHmFazajYuuaIlJz9Hk7paKiUZkGTLrE
 so4QqFrpvj7zrVrARZt2zm/pfFVy3QmMViR5LZeJTKn7hVQoiaGADZEPbw8IE3AIIFQj
 zeeOBqnxfCsEpM0li68P5YCW4ay/iP4+J2ppy8wy/wlAzPQhpAfkoC6PF6WZGqPbsPoO
 tPEg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9g7vOUcFgChAf/PBxyRficIzWMY6Dd9f5oHDEUwn178MIl22FWclBA+OukDZbQS4rhEXai0Te3+eX9Sr5CPGoH3cs=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YysRRo5Kte4VF9KHJ6/8oy/N1zY3wzu3X5SZwTj8LDK1sCwl33z
 NrRzA4rdpWrcFz2HZNdJ6L91YxClhR7e7SVFlugYklCVGvMinPy/6AUPjNIpW9Zovco=
X-Gm-Gg: Acq92OEV9FNAR79rTHz95Qu/xjGCMlP5EspBum8ZfRr60AumwBnoA+HY4d+m1g0D+v9
 ahorefMml+M87+ahphbm3N5diyyeZbHLjWSe75xgk7uTJcyhEPtp+QzkRX3CmqGQcMlCEOdaB34
 wOLfXnXPUBcDZN6JbWhEv76wAxoCnS7JRoP+0F6pKgz8n2uQN2TKUhaMLtsECqqelb24Nn5hmR8
 iVZkmykjlL73GUGPBYEU9iMrVkE50GgAd6xe6AOXh36pUk4aipXxWak6TNBuuHcsuj6dW7rrDKS
 pJRgVocViCLIZm2GHweyNbzt2709Doh+oVHV4omcu0v+5r+X9XMPAzPhO42YzUcBss4e5cFph2/
 +RXCeqgSIcT4jMsJ+pbosgu6/yWwOLfiyOOKhwRfUjAPoTF16XTj6c+Dyl1x0//jUtYZBKM+s9e
 OPeC7603xOgxkLIV6syB16h8p90jf3op2ndpp9xumR6g1vfYU8gHGs9Yunt9lXI6POjZBMblcWY
 bPlr90dTzADyNob9ah4yCMBDQ==
X-Received: by 2002:a05:6808:13c7:b0:482:52f6:b688 with SMTP id
 5614622812f47-4865ac087ecmr5135491b6e.45.1780571832777; 
 Thu, 04 Jun 2026 04:17:12 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:144e:c181:b1d6:32f9])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-4865b5a5b5fsm4328725b6e.2.2026.06.04.04.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2026 04:17:11 -0700 (PDT)
Date: Thu, 4 Jun 2026 06:17:06 -0500
From: Corey Minyard <corey@minyard.net>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <aiFesr3H486vPlcH@mail.minyard.net>
References: <20260603192511.6869-1-rosenp@gmail.com>
 <aiCwfoG0uQf0aSCK@mail.minyard.net>
 <aiCxRPJBfskDx2Pn@mail.minyard.net>
 <CAKxU2N-iq7B9pjtJ6pjZY6qQz4hkwKNhHgEv3uifV9zHev2SFA@mail.gmail.com>
 <aiC2Dj-Mes69Ltf2@mail.minyard.net>
 <CAKxU2N8z52BBJx13RSDus4cvs_0Xo-CspmvHkTu-F_n1AYRxMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N8z52BBJx13RSDus4cvs_0Xo-CspmvHkTu-F_n1AYRxMw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 03, 2026 at 04:18:57PM -0700, Rosen Penev wrote:
 > On Wed, Jun 3, 2026 at 4:17 PM Corey Minyard <corey@minyard.net> wrote:
 > > > > On Wed, Jun 03, 2026 at 04:05:54PM -0700, Rosen Penev wro [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.173 listed in wl.mailspike.net]
X-Headers-End: 1wV64c-0005c9-0Q
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,mail.minyard.net:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56CEC63F594

T24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDQ6MTg6NTdQTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3Jv
dGU6Cj4gT24gV2VkLCBKdW4gMywgMjAyNiBhdCA0OjE34oCvUE0gQ29yZXkgTWlueWFyZCA8Y29y
ZXlAbWlueWFyZC5uZXQ+IHdyb3RlOgo+ID4KPiA+IE9uIFdlZCwgSnVuIDAzLCAyMDI2IGF0IDA0
OjA1OjU0UE0gLTA3MDAsIFJvc2VuIFBlbmV2IHdyb3RlOgo+ID4gPiBPbiBXZWQsIEp1biAzLCAy
MDI2IGF0IDM6NTfigK9QTSBDb3JleSBNaW55YXJkIDxjb3JleUBtaW55YXJkLm5ldD4gd3JvdGU6
Cj4gPiA+ID4KPiA+ID4gPiBPbiBXZWQsIEp1biAwMywgMjAyNiBhdCAwNTo1Mzo1NlBNIC0wNTAw
LCBDb3JleSBNaW55YXJkIHdyb3RlOgo+ID4gPiA+ID4gT24gV2VkLCBKdW4gMDMsIDIwMjYgYXQg
MTI6MjU6MTFQTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3JvdGU6Cj4gPiA+ID4gPiA+IFVzZSBwbGF0
Zm9ybV9nZXRfaXJxKCkgdG8gcmV0cmlldmUgdGhlIGludGVycnVwdCByZXNvdXJjZSBpbnN0ZWFk
IG9mCj4gPiA+ID4gPiA+IGRpcmVjdGx5IHBhcnNpbmcgYW5kIG1hcHBpbmcgdGhlIE9GIG5vZGUg
dmlhIGlycV9vZl9wYXJzZV9hbmRfbWFwKCkuCj4gPiA+ID4gPiA+IFRoaXMgaXMgdGhlIHN0YW5k
YXJkIHBhdHRlcm4gZm9yIHBsYXRmb3JtIGRldmljZXMuCj4gPiA+ID4gPiA+IGlycV9vZl9wYXJz
ZV9hbmRfbWFwKCkgcmVxdWlyZXMgaXJlX2Rpc3Bvc2VfbWFwcGluZygpLCB3aGljaCBpcyBtaXNz
aW5nLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBBc3Npc3RlZC1ieTogQW50aWdyYXZpdHk6R2Vt
aW5pLTMuNS1GbGFzaAo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9z
ZW5wQGdtYWlsLmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL2NoYXIv
aXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMgfCAyICstCj4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYyBiL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYwo+ID4gPiA+ID4gPiBpbmRleCBmYjZlMzU5
YWU0OTQuLmUxMGI1ZDhhZjA5MiAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9zaV9wbGF0Zm9ybS5jCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvY2hhci9p
cG1pL2lwbWlfc2lfcGxhdGZvcm0uYwo+ID4gPiA+ID4gPiBAQCAtMjc2LDcgKzI3Niw3IEBAIHN0
YXRpYyBpbnQgb2ZfaXBtaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4g
PiA+ID4gPiAgICAgaW8ucmVnc3BhY2luZyAgID0gcmVnc3BhY2luZyA/IGJlMzJfdG9fY3B1cChy
ZWdzcGFjaW5nKSA6IERFRkFVTFRfUkVHU1BBQ0lORzsKPiA+ID4gPiA+ID4gICAgIGlvLnJlZ3No
aWZ0ICAgICA9IHJlZ3NoaWZ0ID8gYmUzMl90b19jcHVwKHJlZ3NoaWZ0KSA6IDA7Cj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+IC0gICBpby5pcnEgICAgICAgICAgPSBpcnFfb2ZfcGFyc2VfYW5kX21h
cChwZGV2LT5kZXYub2Zfbm9kZSwgMCk7Cj4gPiA+ID4gPiA+ICsgICBpby5pcnEgICAgICAgICAg
PSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoaXMgc2hv
dWxkIGJlIHNvbWV0aGluZyBsaWtlOgo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgICAgIGlvLmlycSA9
IHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwocGRldiwgMCk7Cj4gPiA+ID4gPiAgICAgICBpZiAo
aW8uaXJxID4gMCkKPiA+ID4gPiA+ICAgICAgICAgICAgICAgaW8uaXJxX3NldHVwID0gaXBtaV9z
dGRfaXJxX3NldHVwOwo+ID4gPiA+ID4gICAgICAgZWxzZQo+ID4gPiA+ID4gICAgICAgICAgICAg
ICBpby5pcnEgPSAwOwo+ID4gPiA+ID4KPiA+ID4gPiA+IHJpZ2h0Pwo+ID4gPiA+Cj4gPiA+ID4g
T29wcywgY3V0IGFuZCBwYXN0ZSBlcnJvciwgdHJ5Ogo+ID4gPiA+Cj4gPiA+ID4gICAgICAgICBp
by5pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKHBkZXYsIDApOwo+ID4gPiA+ICAgICAg
ICAgaWYgKGlvLmlycSA8IDApCj4gPiA+ID4gICAgICAgICAgICAgICAgIGlvLmlycSA9IDA7Cj4g
PiA+IEkgZG9uJ3QgdGhpbmsgdGhhdCBpZiBpcyBhcHByb3ByaWF0ZS4KPiA+Cj4gPiBDYW4gcGxh
dGZvcm1fZ2V0X2lycVtfb3B0aW9uYWxdKCkgcmV0dXJuIDwgMD8gIFRoZSBkcml2ZXIgc3RpbGwg
aGFzIHRvCj4gPiB3b3JrIGV2ZW4gaWYgdGhlcmUgaXMgbm8gaW50ZXJydXB0IHNwZWNpZmllZC4K
PiBJdCBjYW4gcmV0dXJuIC1FUFJPQkVfREVGRVIuCj4gCj4gTm8gaWRlYSBob3cgbGlrZWx5IGlu
IHRoaXMgZHJpdmVyLgoKV2VsbCwgSSBoYXZlIHRvIGhhbmRsZSBhIG5lZ2F0aXZlIHJldHVybiB2
YWx1ZSBoZXJlLCB0aGUgY29tbWVudHMgYWJvdmUKcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgp
IHNheSBzby4gIFRoZSB2YWx1ZSBpcyBvcHRpb25hbC4gIFNvIGl0IGhhcwp0byBiZSB0aGUgYWJv
dmUuCgpJJ2xsIG1vZGlmeSB0aGUgcGF0Y2ggdG8gYmUgd2hhdCBJIHBvc3RlZCBhYm92ZS4KCj4g
Pgo+ID4gLWNvcmV5Cj4gPgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBqdXN0IGRpc2FibGVzIHRoZSBp
bnRlcnJ1cHQgaWYgaXQgY2FuJ3QgZ2V0IGl0Lgo+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
LWNvcmV5Cj4gPiA+ID4gPgo+ID4gPiA+ID4gPiAgICAgaW8uZGV2ICAgICAgICAgID0gJnBkZXYt
PmRldjsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gICAgIGRldl9kYmcoJnBkZXYtPmRldiwgImFk
ZHIgMHglbHggcmVnc2l6ZSAlZCBzcGFjaW5nICVkIGlycSAlZFxuIiwKPiA+ID4gPiA+ID4gLS0K
PiA+ID4gPiA+ID4gMi41NC4wCj4gPiA+ID4gPiA+CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApP
cGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
