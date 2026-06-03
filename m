Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lzVlLIy2IGpI7AAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:19:40 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A22363BD6E
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:19:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=UcaL7S6e;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=PlAIJ2DQ;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="GhrD/jC/";
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=JvUE4fwu;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U66RerdXMqQPE0zb4vjkC9l8GrkDG/ZlFWWil4mvLIg=; b=UcaL7S6ed401NZ9Tbo+l+Gj74t
	rXYXnISHGi0izU6GqHM84bsyoNsOiBY9f6pGY4cGQPb1On0FvvmdyBY9MISoAPZpo8aHH7XnyKILZ
	P8VwDm1bc67i1BQEFdUrL+RGweArbqsN7r7FSx0o3vqzTG2E289VaP4DIrdMw/DyQQBA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wUus1-00011K-4u;
	Wed, 03 Jun 2026 23:19:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rosenp@gmail.com>) id 1wUurx-00011A-02
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmZrmlq2i1c1KP68xz6RXsHmyTuQgHCkl39m42YFe34=; b=PlAIJ2DQmfIPrpSGcYd+GObzDi
 uS0KmwfSB0hBnkxXwn/3bOPYvjQxUjy3MM1jD/qH1asLCOjWumsqSGS9AVXeAvJzIYllD0AXTpZlX
 6Pp31y7Y+mxfN4suSMxwEEP6X6yEukEI4mU+YjEuwFtnlUvRKJdP59K86jlNk2RtIfCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmZrmlq2i1c1KP68xz6RXsHmyTuQgHCkl39m42YFe34=; b=GhrD/jC/YTpFeeTmePUkqBEWNn
 Cr5Q+yVdP7KmGx9NJKv9fkEWstlgwtS3lyjVntLYeQU3FuDGnkLI08rRQGPqqiHN2Pqaf59xOiJWo
 /CmL9z9fxIpDdicXtMJbSZAgJmyyoQySoppPk2iQPjIoyXguvVklquqbRo5iITEhKkZY=;
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wUurw-0005xK-3g for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:19:28 +0000
Received: by mail-lj1-f169.google.com with SMTP id
 38308e7fff4ca-3965f215817so261931fa.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Jun 2026 16:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780528762; cv=none;
 d=google.com; s=arc-20240605;
 b=NDOnhvxqG9gfoxfbhLVypPz9AgzbcVrXErCiw5rDh8voaBMwzLj2BWV5rWyU77zFaI
 4OIAKz6ulyN96+9TU+BgzUGKFpy2BuZ5wGQqwgf7uRljbg/CReYJJgPJ/l+93c8SwLuJ
 kndx9uOpk4KXjcrLJTR5AQfH/ux+YUi4Kettn5MLpgoo/JQMI2k/c0k376RE1Cd4hXil
 sIQcB4OvGf0xmqDwBxJzJxiPk4sLpWahuYIY0ocnssoC56qsjDW3tERluwfGcS+uGn6Q
 Pdsis8knfXgG3l+0O2rncZLUuf3EuotDTdBSNFRuA3SB5CgsFt/CoJz0BhWJvPaUf6rZ
 ngDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=bmZrmlq2i1c1KP68xz6RXsHmyTuQgHCkl39m42YFe34=;
 fh=FoHim2EWwkS0MhcCPIoNhl/hR3irbXh2uidbXVwe35M=;
 b=bAX7rT36fQFRAeUbDHf7zQguAFTfV9lAIMgCrnGhdtSKFYb/xGM0B9dnFjCwza1LH+
 jAuILtUeK4hcJFWtuOrvEjF2boxdztAe6uVsbF0NVbEl6abgNT+N5XcGm7gTdvxoVqgZ
 JKTqWuvTAg9c+Of4RhTlMCYQNSHNcIivT5TPiC2V72hpP2cXAwO9nNGBxGGYfqlIe9wy
 xAQ8V4URGXAbYyUGasqYP7AnNgtKzTKMJOr00UgkmHLqNHsvZyyw6LdW92klWRxPYR2g
 7JFp0hmZ1rMlQy9XNkJJLjur1j3SGshyUTtnR98NsiRMqTs6q0lfeWGhoOV6VXblMsxq
 7UyA==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780528762; x=1781133562; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bmZrmlq2i1c1KP68xz6RXsHmyTuQgHCkl39m42YFe34=;
 b=JvUE4fwuKdbLozDgLW5i+cnAfKdoMGt7dRxCJLED8BUDBiy1mgCmtttIDuk0NxN0RB
 hBpml9ZQmLzt4D1whEJNrFc0Is4vJhnC0h9j97jLYfzrf58v1v0gk8zie7r1XlwlLuS5
 kYl7zB0Cfle+IgWuIy4UNy0XZxaaUWx5Zn/3mgN/iwgwg+qbetl5nklA4OOIj4UQNqBY
 XTAzycfS8/180Ol/BvM9T2lK1bzl83wk3CmqRY6fkGsNTQ+9Dn1p8BIVsTVuQ42v+WV/
 JFptR4Pk0N8+krYhl0Uw9y+0S1Dk1vDcsKbCtXAn/e9ub1WWoKIelV+OX1N6ln9HW9Xr
 RblQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780528762; x=1781133562;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=bmZrmlq2i1c1KP68xz6RXsHmyTuQgHCkl39m42YFe34=;
 b=TrklgfI3PETYJsH33ViEPZd6kp/FxZbm9+qLdahXoA16SgLFvr0wRhU1qz3do89h/5
 ba3pTaFGZJQGX7VwAxGmxNT9ivAIZmkzWWL2K33e4VvR3kL9PJnKGMqdJlTymrV0j90D
 exykBj4Zm7oKLxgI1dLMekEBxGh6CaL+2+hYt3TDHu2X0m+xQwIDS1rUHc8aUUFELaUf
 WUdMyX0AdIJXqacDpZExTj/1G8Xw1L1e5JWS8vzRNGTUaTRgwxcNk48sePT0PMxJXARe
 B42/Lw2EnCeciz2KUgtoaHTfenvbKOq4wtQdxza3EUsD6Jr+5cz8qUxChqoYnNXLTUHT
 R3GA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+8iSaEQCD2lgnzFjNj4/CoImFCIQolWIfyWSxyMUzUIdIt+3CiViPMwvJVm0v6hYShBILwC/J5zkQsZhKNG5fd6+k=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxUYg2EEtsIEuCtdZXuX8C32NMrGvyiHj9aGe3MRonS51aGO+2L
 5Y1yUqo4ZdkWfe5rFnZdlfJ5GxEXsVcj0fi24VTDro/I7xwLMHQi2YkCnhgd9XbQSd9IWbaEPpa
 Y/l04nwSyhWCL2NZe3KZizcBes0lHunc285Ak
X-Gm-Gg: Acq92OF0jNTYuDAQm5ZnQcjxPBEkjDlsEFwU6egSI692vFqciwsIek/1IGQt4fZ+dEN
 ap+x0CcsLEjw+WHGn+hzTpwQEoXHCtgUvklazR3KBcWG5KQRhEtXeObQQKj0cc0eeC162a76CUa
 s6q+dfGUSbtDnF0xHwlbU9v+NmZJfEy6k8v8ve90fHmJDX6gxlXKeNqwY8PjD+/nXPSGZvFTq8g
 NJaA4FLW/JZe0yMQCllJyKKtF6k9bvTftlAkRyrAnzN79XPEpKhF3IhyypKmt9TGvWqQIdvRdES
 3L1aTvwrC3KwSZf736pUcG3rtpUNZO0rVwTBg/HHSoLM9XY9aYz7/AWos5Yfni8M81bd1j5be+q
 b2h0TqA6YRcuaauchi6uJ/5MXjbe+w78qDIQDcthH5vXL6foA8c0o65BIfXCUmmlUtEmj
X-Received: by 2002:a05:6512:1559:20b0:5aa:6b19:b339 with SMTP id
 2adb3069b0e04-5aa7c054e11mr1302691e87.7.1780528751471; Wed, 03 Jun 2026
 16:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260603192511.6869-1-rosenp@gmail.com>
 <aiCwfoG0uQf0aSCK@mail.minyard.net>
 <aiCxRPJBfskDx2Pn@mail.minyard.net>
 <CAKxU2N-iq7B9pjtJ6pjZY6qQz4hkwKNhHgEv3uifV9zHev2SFA@mail.gmail.com>
 <aiC2Dj-Mes69Ltf2@mail.minyard.net>
In-Reply-To: <aiC2Dj-Mes69Ltf2@mail.minyard.net>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 3 Jun 2026 16:18:57 -0700
X-Gm-Features: AVHnY4JRvW-7o5DUlVtIOHR2E0BZu155-oqxPTPGK4f9YaMVDhY0JqzZXAifAMQ
Message-ID: <CAKxU2N8z52BBJx13RSDus4cvs_0Xo-CspmvHkTu-F_n1AYRxMw@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 3, 2026 at 4:17 PM Corey Minyard wrote: > > On
 Wed, Jun 03, 2026 at 04:05:54PM -0700, Rosen Penev wrote: > > On Wed, Jun
 3, 2026 at 3:57 PM Corey Minyard wrote: > > > > > > On Wed, Jun [...] 
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
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [rosenp(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.169 listed in wl.mailspike.net]
X-Headers-End: 1wUurw-0005xK-3g
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
Cc: "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[rosenp@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,mail.gmail.com:mid,io.dev:url,minyard.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A22363BD6E

T24gV2VkLCBKdW4gMywgMjAyNiBhdCA0OjE34oCvUE0gQ29yZXkgTWlueWFyZCA8Y29yZXlAbWlu
eWFyZC5uZXQ+IHdyb3RlOgo+Cj4gT24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDQ6MDU6NTRQTSAt
MDcwMCwgUm9zZW4gUGVuZXYgd3JvdGU6Cj4gPiBPbiBXZWQsIEp1biAzLCAyMDI2IGF0IDM6NTfi
gK9QTSBDb3JleSBNaW55YXJkIDxjb3JleUBtaW55YXJkLm5ldD4gd3JvdGU6Cj4gPiA+Cj4gPiA+
IE9uIFdlZCwgSnVuIDAzLCAyMDI2IGF0IDA1OjUzOjU2UE0gLTA1MDAsIENvcmV5IE1pbnlhcmQg
d3JvdGU6Cj4gPiA+ID4gT24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMTI6MjU6MTFQTSAtMDcwMCwg
Um9zZW4gUGVuZXYgd3JvdGU6Cj4gPiA+ID4gPiBVc2UgcGxhdGZvcm1fZ2V0X2lycSgpIHRvIHJl
dHJpZXZlIHRoZSBpbnRlcnJ1cHQgcmVzb3VyY2UgaW5zdGVhZCBvZgo+ID4gPiA+ID4gZGlyZWN0
bHkgcGFyc2luZyBhbmQgbWFwcGluZyB0aGUgT0Ygbm9kZSB2aWEgaXJxX29mX3BhcnNlX2FuZF9t
YXAoKS4KPiA+ID4gPiA+IFRoaXMgaXMgdGhlIHN0YW5kYXJkIHBhdHRlcm4gZm9yIHBsYXRmb3Jt
IGRldmljZXMuCj4gPiA+ID4gPiBpcnFfb2ZfcGFyc2VfYW5kX21hcCgpIHJlcXVpcmVzIGlyZV9k
aXNwb3NlX21hcHBpbmcoKSwgd2hpY2ggaXMgbWlzc2luZy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBB
c3Npc3RlZC1ieTogQW50aWdyYXZpdHk6R2VtaW5pLTMuNS1GbGFzaAo+ID4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+
ID4gPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMgfCAyICstCj4gPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+
ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxh
dGZvcm0uYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYwo+ID4gPiA+ID4g
aW5kZXggZmI2ZTM1OWFlNDk0Li5lMTBiNWQ4YWYwOTIgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKPiA+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYwo+ID4gPiA+ID4gQEAgLTI3Niw3ICsyNzYs
NyBAQCBzdGF0aWMgaW50IG9mX2lwbWlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiA+ID4gPiA+ICAgICBpby5yZWdzcGFjaW5nICAgPSByZWdzcGFjaW5nID8gYmUzMl90b19j
cHVwKHJlZ3NwYWNpbmcpIDogREVGQVVMVF9SRUdTUEFDSU5HOwo+ID4gPiA+ID4gICAgIGlvLnJl
Z3NoaWZ0ICAgICA9IHJlZ3NoaWZ0ID8gYmUzMl90b19jcHVwKHJlZ3NoaWZ0KSA6IDA7Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gLSAgIGlvLmlycSAgICAgICAgICA9IGlycV9vZl9wYXJzZV9hbmRfbWFw
KHBkZXYtPmRldi5vZl9ub2RlLCAwKTsKPiA+ID4gPiA+ICsgICBpby5pcnEgICAgICAgICAgPSBw
bGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBzaG91bGQgYmUg
c29tZXRoaW5nIGxpa2U6Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBpby5pcnEgPSBwbGF0Zm9ybV9n
ZXRfaXJxX29wdGlvbmFsKHBkZXYsIDApOwo+ID4gPiA+ICAgICAgIGlmIChpby5pcnEgPiAwKQo+
ID4gPiA+ICAgICAgICAgICAgICAgaW8uaXJxX3NldHVwID0gaXBtaV9zdGRfaXJxX3NldHVwOwo+
ID4gPiA+ICAgICAgIGVsc2UKPiA+ID4gPiAgICAgICAgICAgICAgIGlvLmlycSA9IDA7Cj4gPiA+
ID4KPiA+ID4gPiByaWdodD8KPiA+ID4KPiA+ID4gT29wcywgY3V0IGFuZCBwYXN0ZSBlcnJvciwg
dHJ5Ogo+ID4gPgo+ID4gPiAgICAgICAgIGlvLmlycSA9IHBsYXRmb3JtX2dldF9pcnFfb3B0aW9u
YWwocGRldiwgMCk7Cj4gPiA+ICAgICAgICAgaWYgKGlvLmlycSA8IDApCj4gPiA+ICAgICAgICAg
ICAgICAgICBpby5pcnEgPSAwOwo+ID4gSSBkb24ndCB0aGluayB0aGF0IGlmIGlzIGFwcHJvcHJp
YXRlLgo+Cj4gQ2FuIHBsYXRmb3JtX2dldF9pcnFbX29wdGlvbmFsXSgpIHJldHVybiA8IDA/ICBU
aGUgZHJpdmVyIHN0aWxsIGhhcyB0bwo+IHdvcmsgZXZlbiBpZiB0aGVyZSBpcyBubyBpbnRlcnJ1
cHQgc3BlY2lmaWVkLgpJdCBjYW4gcmV0dXJuIC1FUFJPQkVfREVGRVIuCgpObyBpZGVhIGhvdyBs
aWtlbHkgaW4gdGhpcyBkcml2ZXIuCj4KPiAtY29yZXkKPgo+ID4gPgo+ID4gPiBUaGlzIGp1c3Qg
ZGlzYWJsZXMgdGhlIGludGVycnVwdCBpZiBpdCBjYW4ndCBnZXQgaXQuCj4gPiA+Cj4gPiA+ID4K
PiA+ID4gPiAtY29yZXkKPiA+ID4gPgo+ID4gPiA+ID4gICAgIGlvLmRldiAgICAgICAgICA9ICZw
ZGV2LT5kZXY7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gICAgIGRldl9kYmcoJnBkZXYtPmRldiwgImFk
ZHIgMHglbHggcmVnc2l6ZSAlZCBzcGFjaW5nICVkIGlycSAlZFxuIiwKPiA+ID4gPiA+IC0tCj4g
PiA+ID4gPiAyLjU0LjAKPiA+ID4gPiA+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBt
aS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
