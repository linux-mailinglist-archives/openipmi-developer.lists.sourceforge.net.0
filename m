Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ELV9EYu2IGpE7AAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:19:39 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF3963BD63
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:19:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=OGaRdq1W;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=VV7eFyg2;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=BBzs7U55;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=owxzkHMO;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s/5/+nDUPbwDipCKcCkyGUXqSuEZtIPc9Lp/h0193Sg=; b=OGaRdq1WGtMwfalxEbcOahOV2J
	gt0R0M+fry3+cEr+ZK8uqfLQvNOZSEA/yIZryo7E20D2bX9CvcZQ+UUIYjOeZ1oQ3hIZnU2kTVR33
	XDoiOMt6bFHJx+qaJzg8fIUagw5IYAf2MI7GXVK+th44+cEOZ9JqILkozYk6RFhLU1pI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wUurz-0003fL-8L;
	Wed, 03 Jun 2026 23:19:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rosenp@gmail.com>) id 1wUufH-0004se-Cm
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:06:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q8SlYRyw0QJ+cMY8mz9B7dzyGe2vWkHElMpxICwUE6o=; b=VV7eFyg2i8IMyeoUF5MEsVde3x
 6MkvOdMbqbm4xA5/3WDhwupyaPXBDCJFAcZIB8Fa+FQr4r68OJXqnWwupI72vOqKPApNudrgWcMfX
 Tn4OvLZWUy1zf9GWBauBwCGtlq+jcGz8ypdNywd9/t5U5aaLb3q3MCNyvGH34+LY4XlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q8SlYRyw0QJ+cMY8mz9B7dzyGe2vWkHElMpxICwUE6o=; b=BBzs7U55l2cfu1wLtai42zkKiO
 sMxhgF8qLapS1dlHyS4LKif/5Nbf9MVQG99N1FdTeAUHmnEjrD6mbNUK0eTdqSQMP15tL2kOnFzdk
 zvGRBbd2BnjOAaLU6EJOSfrO9uQ8yOfKzsM2y0MO1YC9zp8WL5J7TvHGiI0aZwr19Ymg=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wUufC-0004Gf-FB for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:06:20 +0000
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-5aa68cf9123so38594e87.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Jun 2026 16:06:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780527967; cv=none;
 d=google.com; s=arc-20240605;
 b=CoQYnUGrKv9F88XuhMfIDZQuwzAGxRrHE2rSNT0ZM1XabvrH/nMm1N7qBD/8hQzHlp
 7SMUbefZ9sYFS3GuRez5Bjj426IMe1fS+mr4bBU/tj13Py8+aSsr6coNZVae6TOdPecR
 pZHru1k3bhTrbUnRNGQbLiuD+x481zyKK8gbWhQ18Xh/kDtKK29kcUo7ceDRtVOHBV92
 OxQIYPcWBtsEb379yB9rnG8DUw4Uivh5erNZCDcDSv4qG6marpCsmczSfby2t0Ii7SsZ
 3fI3uNnDYSr/v5JEcknXdR0Hj1HER9ZEeCkw9FYMB+0oFZchKErTMNvj93yWLq9cb2oV
 At4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=Q8SlYRyw0QJ+cMY8mz9B7dzyGe2vWkHElMpxICwUE6o=;
 fh=QHyLqR/hhfo9C2X14o+KaMHTdkzZVsZBgu6T3R2H00w=;
 b=XwMQQ/vYoNtItz4VDvRN9Yw8MpQkJ28zEghrjCQWutn/WB/l0HrnJlIlb0O0OAaV5i
 ClnLAoWiki5bRXSNV265Ye9j1CCrDXIGf2ZoMS+QZqt0y/eydGyNE+sy+M/KSzTg+6Q2
 c6LSRVbZLdYutAyLlrOr76x/RvQWpzemXcz+pOO/dDbNER1XIWfkzt6wT62uDB26tkoP
 1mz676UvnlfQmZ6LeRsRzclG+OI5QtO5eo50/B4ka+k4n0DD0+jNA6bbpti25UOCB24R
 r3Ii1c4Bp7YUE7pdPGczwWQEuGjeEtcGb9JMD2UuSe83nESxk7TUep/9aWv2KniedFUw
 dkmA==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780527967; x=1781132767; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q8SlYRyw0QJ+cMY8mz9B7dzyGe2vWkHElMpxICwUE6o=;
 b=owxzkHMO7AgvVV3wH/Hnv9//26NAtfhHUFMR8GDPWk/ySh02Z7ijBOSGrlGIz0qDrO
 ZjaE7/EXv5fJFnClle/29g8ycpINNDhyrlCVnXieRIPejEKiBzbTxykNQKo2USUb0hfB
 ukaskYP3MYrvNonFhGquriTiFZZGg8mSn9HJ3HFr6zFsvFFfEH2tCwD/N5uiRxsvJB3s
 ZSsjGeWWeT3TkSTx5xEN3pZmmonV1Szt+jTbVPsxFHbylBEhHiBwtfu21KEamCzd7/fa
 4HqEpGOSzLTzNS5RCw9X0kzBHpsNqPGQULBN/zcXBi2zqXXXO+w3xU3ODEJH0UHJ9iHq
 BcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780527967; x=1781132767;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Q8SlYRyw0QJ+cMY8mz9B7dzyGe2vWkHElMpxICwUE6o=;
 b=o2Y5MV6KGImqVTrorLDFNNGz/ROz/2Xqkrk932+eaImuqv3WGPh5vofCgOhNqgKDTs
 I/RtmS68O/RcH85wW88xTONdDXiytjyQFnECcxI/tFBxBi4Ap1RCbFyKKy7ignd7qR4o
 evFQpn9ypihZQL+KEF0YlRvGjxWPYA5CASN4jW6WyMu5NAVuXZDZK77S7YTfFsj5Ztze
 T4YkyFzuVsxHmXXjduohQMKSf0Rg4uHGMC+zICJd/ABvbDEIGXDKOWy+rQ+pLYcOc2Ee
 PcmBRHbjqp8K7RoLS4hxniLmxLDKk0YTyi9vq3n5Q+o7E+dRWxLI53yaXQO0MUZ7tD65
 gI7w==
X-Forwarded-Encrypted: i=1;
 AFNElJ9mP3Jn4c7z3ZZucuOQVZjhthpex9Qxqwm5VJndMh0Jmei6ozj8HtOzYJcQuTw8uMiGe8+9kLxsviA7kCBLTGj0dCg=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzQEVheMAgaJQmRFJRaJP1aijc+A/HxssgGsGGrtlJjC2ofLT0W
 kDiWHycEOUyPReAx3+HFeAe91udSA1qShNU4A9uC1+ulQUXelwwInOQl2C3ba2rgMPtKhXNhHeI
 usilf54v0m2NHF89WrepBgTaUtaz6kHI=
X-Gm-Gg: Acq92OEvgpPzu8D5AFcW5mVIrqFtU6A0p419KTkMfXJnNlMBc9HG5viZsKSLNP3YWZm
 HR/1T9j6vngM20VuFkQG6FUuYP0t6dTXh1DllsbRQwsSxT1Mzz9iW+x7iWUYQL5ncbbRGfl2OrZ
 EWp/l1C0A+L1vgLdtydmjwHsCx9jS7Qi+XJ0eAHvb1KnnSk/nhWk5kjkoLPqaRfw+NN7eGfV7aw
 qgCB7njTc904MbzFZFPVVXSq4lvXS7063d0w3n+PcyB7QwVZOiUI7jkOCuDelZ9uCYtcdq98fMV
 9fogbUjZTDi0c5mFC3w5yd1h0Jrp7BxGIbd61So8+erb7r2DvsX0xyqmLV7n9J796umfJ6epG+x
 Slth67K/ey7BSFgd3QqkbsBLOVgvgzC+/YgN5BpVIW3EWF6/w3C8vs5FZzG90zLD3Yf5d
X-Received: by 2002:a05:6512:32c5:b0:5aa:6637:f225 with SMTP id
 2adb3069b0e04-5aa7c0d14c5mr1917414e87.37.1780527966968; Wed, 03 Jun 2026
 16:06:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260603192511.6869-1-rosenp@gmail.com>
 <aiCwfoG0uQf0aSCK@mail.minyard.net>
 <aiCxRPJBfskDx2Pn@mail.minyard.net>
In-Reply-To: <aiCxRPJBfskDx2Pn@mail.minyard.net>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 3 Jun 2026 16:05:54 -0700
X-Gm-Features: AVHnY4IXUcH8fiC70iiBxDlNxaV2yi9E_njm5wRXhOhBUkWmC9JN5weSrySfKMc
Message-ID: <CAKxU2N-iq7B9pjtJ6pjZY6qQz4hkwKNhHgEv3uifV9zHev2SFA@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 3, 2026 at 3:57 PM Corey Minyard wrote: > > On
 Wed, Jun 03, 2026 at 05:53:56PM -0500, Corey Minyard wrote: > > On Wed, Jun
 03, 2026 at 12:25:11PM -0700, Rosen Penev wrote: > > > Use plat [...] 
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
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [rosenp(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.48 listed in wl.mailspike.net]
X-Headers-End: 1wUufC-0004Gf-FB
X-Mailman-Approved-At: Wed, 03 Jun 2026 23:19:30 +0000
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
X-Rspamd-Queue-Id: 9FF3963BD63

T24gV2VkLCBKdW4gMywgMjAyNiBhdCAzOjU34oCvUE0gQ29yZXkgTWlueWFyZCA8Y29yZXlAbWlu
eWFyZC5uZXQ+IHdyb3RlOgo+Cj4gT24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDU6NTM6NTZQTSAt
MDUwMCwgQ29yZXkgTWlueWFyZCB3cm90ZToKPiA+IE9uIFdlZCwgSnVuIDAzLCAyMDI2IGF0IDEy
OjI1OjExUE0gLTA3MDAsIFJvc2VuIFBlbmV2IHdyb3RlOgo+ID4gPiBVc2UgcGxhdGZvcm1fZ2V0
X2lycSgpIHRvIHJldHJpZXZlIHRoZSBpbnRlcnJ1cHQgcmVzb3VyY2UgaW5zdGVhZCBvZgo+ID4g
PiBkaXJlY3RseSBwYXJzaW5nIGFuZCBtYXBwaW5nIHRoZSBPRiBub2RlIHZpYSBpcnFfb2ZfcGFy
c2VfYW5kX21hcCgpLgo+ID4gPiBUaGlzIGlzIHRoZSBzdGFuZGFyZCBwYXR0ZXJuIGZvciBwbGF0
Zm9ybSBkZXZpY2VzLgo+ID4gPiBpcnFfb2ZfcGFyc2VfYW5kX21hcCgpIHJlcXVpcmVzIGlyZV9k
aXNwb3NlX21hcHBpbmcoKSwgd2hpY2ggaXMgbWlzc2luZy4KPiA+ID4KPiA+ID4gQXNzaXN0ZWQt
Ynk6IEFudGlncmF2aXR5OkdlbWluaS0zLjUtRmxhc2gKPiA+ID4gU2lnbmVkLW9mZi1ieTogUm9z
ZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9zaV9wbGF0Zm9ybS5jIHwgMiArLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1p
X3NpX3BsYXRmb3JtLmMKPiA+ID4gaW5kZXggZmI2ZTM1OWFlNDk0Li5lMTBiNWQ4YWYwOTIgMTAw
NjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYwo+ID4g
PiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKPiA+ID4gQEAgLTI3
Niw3ICsyNzYsNyBAQCBzdGF0aWMgaW50IG9mX2lwbWlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiA+ID4gICAgIGlvLnJlZ3NwYWNpbmcgICA9IHJlZ3NwYWNpbmcgPyBiZTMy
X3RvX2NwdXAocmVnc3BhY2luZykgOiBERUZBVUxUX1JFR1NQQUNJTkc7Cj4gPiA+ICAgICBpby5y
ZWdzaGlmdCAgICAgPSByZWdzaGlmdCA/IGJlMzJfdG9fY3B1cChyZWdzaGlmdCkgOiAwOwo+ID4g
Pgo+ID4gPiAtICAgaW8uaXJxICAgICAgICAgID0gaXJxX29mX3BhcnNlX2FuZF9tYXAocGRldi0+
ZGV2Lm9mX25vZGUsIDApOwo+ID4gPiArICAgaW8uaXJxICAgICAgICAgID0gcGxhdGZvcm1fZ2V0
X2lycShwZGV2LCAwKTsKPiA+Cj4gPiBUaGlzIHNob3VsZCBiZSBzb21ldGhpbmcgbGlrZToKPiA+
Cj4gPiAgICAgICBpby5pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKHBkZXYsIDApOwo+
ID4gICAgICAgaWYgKGlvLmlycSA+IDApCj4gPiAgICAgICAgICAgICAgIGlvLmlycV9zZXR1cCA9
IGlwbWlfc3RkX2lycV9zZXR1cDsKPiA+ICAgICAgIGVsc2UKPiA+ICAgICAgICAgICAgICAgaW8u
aXJxID0gMDsKPiA+Cj4gPiByaWdodD8KPgo+IE9vcHMsIGN1dCBhbmQgcGFzdGUgZXJyb3IsIHRy
eToKPgo+ICAgICAgICAgaW8uaXJxID0gcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbChwZGV2LCAw
KTsKPiAgICAgICAgIGlmIChpby5pcnEgPCAwKQo+ICAgICAgICAgICAgICAgICBpby5pcnEgPSAw
OwpJIGRvbid0IHRoaW5rIHRoYXQgaWYgaXMgYXBwcm9wcmlhdGUuCj4KPiBUaGlzIGp1c3QgZGlz
YWJsZXMgdGhlIGludGVycnVwdCBpZiBpdCBjYW4ndCBnZXQgaXQuCj4KPiA+Cj4gPiAtY29yZXkK
PiA+Cj4gPiA+ICAgICBpby5kZXYgICAgICAgICAgPSAmcGRldi0+ZGV2Owo+ID4gPgo+ID4gPiAg
ICAgZGV2X2RiZygmcGRldi0+ZGV2LCAiYWRkciAweCVseCByZWdzaXplICVkIHNwYWNpbmcgJWQg
aXJxICVkXG4iLAo+ID4gPiAtLQo+ID4gPiAyLjU0LjAKPiA+ID4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
