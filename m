Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WophFa//PmpQOAkAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 27 Jun 2026 00:39:43 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 367776D0746
	for <lists+openipmi-developer@lfdr.de>; Sat, 27 Jun 2026 00:39:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=Uq5TsISN;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=fGcaZjHE;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=Jbok5RKK;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=l4rNj4yJ;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/j82Zr8m32pmZe9JcG0k7go+yek+h/YWjpYSAOiDwzU=; b=Uq5TsISNFUwyuXr/V9d2eZ1GnM
	HbhorSebb6wCsT1fzXj6NBKo8m2dZfPOgzyUgTz7mwF63Ks5cKYszpEsIoLqCDKC4PErKTtaudL9f
	cC57OxoYGJWuHyK35cfxHzJ46qbr2tngENuOmE9wiVNrDdxS9ndLMpzDv0rq54pAO19U=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wdFCm-0003A6-Aa;
	Fri, 26 Jun 2026 22:39:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mclapinski@google.com>) id 1wdFCR-00038a-6h
 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 22:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8ja+H3qEfHS6cShr/3xMczAozxlVc430qsMHdrva/jw=; b=fGcaZjHEOKWUn9Ol6hL7NZo2OU
 NRvA6CJkvPAcnfgTdj7kN8hHCnXg9ZXm/5Cxp3i8OVuuv1HxGwZNNpDr8JP7fst7/AUYEj1h+/lof
 8ldlyG0LmfU4ao3irpndvVH2sH9TmpQxynlTypSXNSAjQFICRrxp5s6uleDmTa6l41DU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8ja+H3qEfHS6cShr/3xMczAozxlVc430qsMHdrva/jw=; b=Jbok5RKK5x+38TxRxFWfUAqcxU
 0Xg0qurMxm2JMhUSs92htw/+QY2kxX0J8kJokA8AI+4rSb4Svsa+rfP1PCagja6GGD3CNKOOtIeqi
 Q3bv6g1JaAlAWYTuA9AQYH2NYjn31zh/StUfd3UawicguzVsbzJfbIKZKZ9N+wWZUSw4=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wdFCQ-0001w5-S9 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 22:39:03 +0000
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-6982f2dc01bso1517a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 26 Jun 2026 15:39:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782513537; cv=none;
 d=google.com; s=arc-20260327;
 b=WQ52opM9EGITuAO6dpQUM1CC9jqpTBpHDCn+qyR7glN8PD9YMcd9Vt1S0f2ReinnX1
 g0eQ0FnNslZYYJJHwB/QZ+yeJoJvRrEoLRuiS7L74eaVoOuPtMcjOpku4vSiYqg2Z9AO
 qdU/5/ypPYF8FwLcg6LICiPDWsBxKDm+R0iDCDzQN4w7VxH7f3KvqxXRAQFlnFu94u1d
 RJEm3+BS2Iya8KJxFNNyvddhCP4zuBtVROy6cCwcBWeYFv2wzyOXuG9po8Q2M5JuE2Kp
 c3hEnSxYUjsfw23MzSD8BlNsYevDOsCHJUR2gBO5AaynClWWcJV9D2A0du2qm5m+jvTO
 Z0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20260327; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=8ja+H3qEfHS6cShr/3xMczAozxlVc430qsMHdrva/jw=;
 fh=MukuksDckLpEqIipcnhGrD/nKkvsTJmYpGi71Lo+uas=;
 b=aCmL1eIBgjiqis71Zf6WGRBUXZQL4SGuafq0oQl+GLSuNuLyrU9Nkrb5iyRrOyJ1I2
 Ca81sAY+/gonJfragZ0FXmp6S6tY5dNNgklzqG9QrnWSaTrN6WV/UZy6iBU8AYo26Mgp
 raSJ4+FJobMg5vr73f2UvHdSTDpQ/kPO4kR6F/k5vK5wO4QbL6k/3LJTtoSRAYKfEG3s
 WtG/UadwEpbTiNmZBZmU5FZRQ4wIFeT+RwUs/GPrza1+bT+n5XsSeQ1cVqViHeYQZwsf
 cQL4/hesGUj+2eoDfUiKoXv7+gW1xzaRBlz+78DkeLyGUm4jmG+whdQIyHFQoOtFVuYZ
 AyoQ==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782513537; x=1783118337;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:content-type:cc:to:subject:message-id
 :date:from:in-reply-to:references:mime-version:from:to:cc:subject
 :date:message-id:reply-to:content-type;
 bh=8ja+H3qEfHS6cShr/3xMczAozxlVc430qsMHdrva/jw=;
 b=l4rNj4yJw3wQadEtvGwYmJBSmYxjljBR3U2yL2jwNMBQOUddoHE9OWSiUhLutw9jvC
 DM+01FXfBGHWZnNAmvtFmAw7/wFkSBSOXmi5nYiDMBB9eqjn5R5c3wnGno7IaQ9CK4kQ
 DOrhPinAaAKc6w/Dosli5Y/0+JsAgxsH0i+t33Cg99rMJVs91hCa8R5haJeH6qJG8Y98
 L89yKRTAT4JovhGyAHWmIHGLGmnrGIvNVKzBxXdABzxzh9wri75mmjY4P+1aNP4BGWSB
 LCEQNtdIpQrOl16VZil071ILO3KlIBL33MoDztC2ILgVO1XurVFa/tXjDSnYSGf8sbwA
 1wuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782513537; x=1783118337;
 h=content-transfer-encoding:content-type:cc:to:subject:message-id
 :date:from:in-reply-to:references:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=8ja+H3qEfHS6cShr/3xMczAozxlVc430qsMHdrva/jw=;
 b=HupNAEVQRKH0u2TzEKqAsuA75d5jH0jaLLpw56bBK+fiHWZxvSTkKCzNgmK+BVfb7Q
 pTTcIvf4sGPgRa8c57IZ2kKeBAcIiavbrIWudUlfCFa7Z0gYmEPK3I7LBfNlOYIQHenJ
 /GSxurGE1fBr9HtWIqpG3gk0q28kSSSAecUom4wXsgY2Q4T+Atf2ZtvD2IZv/7ykFfwN
 afmfPB9n5iYGTvdJS/86Z11cobJBlsXZUt3/5QCucd8F4gNMSrZKcJYMfu4N9yluZ7ZV
 SZPbXZ67cfYU5WQBUDTZhZit4KUBljHd75uysBURecoDJxv9/MWphA/A9fGbS+CGE+kt
 QwqA==
X-Gm-Message-State: AOJu0YwDEhNoiiZu5z+A8nLfoFviSRMFMu7ovNkE4JMA9c1jeOOFSA/j
 Ybr4wPWT7NUNwtRxVc3txp4MAuIgvBHty1a17GZ23VaasnwcaUd1nzcKUU5anA3aAZJKmoU9CM0
 sk8RGm6oAC/z5GLgd23CV+oYeGysJiFsStRVQGyF4Oa6A9gAkVTrlX+5b
X-Gm-Gg: AfdE7cnnnk9FTWliZP71FaA2NU0U/p/BHDqDm6Vm5cGRzYJRtfWgbJxxgiIAZIhGKHI
 qSJkUpsfI7yGYxTNoeLE4AAfJWRvdELqdqLX21nDT56BMo4hguUCwIwoPH9/tqaEfVaZQ2yKmhb
 RSZXRhCZs9yAyFbWBRNMMp46CuyTJ+NXVInuSE8ohOYcHbUR8P0KeOiF6tnZPMWPk/vJUiqNbEM
 2o+lZSfQ4MH0ZQ40QcPeD+oq/di4hF0u+JtWaDophvWiUFRbSMI1MMQCNtsgGQZf4lN6yk=
X-Received: by 2002:aa7:cb53:0:b0:697:e4db:b4d5 with SMTP id
 4fb4d7f45d1cf-6984161d095mr4788a12.1.1782513536313; Fri, 26 Jun 2026 15:38:56
 -0700 (PDT)
MIME-Version: 1.0
References: <20260625155954.1948908-1-mclapinski@google.com>
 <aj4BguM85rpvcTM6@mail.minyard.net>
In-Reply-To: <aj4BguM85rpvcTM6@mail.minyard.net>
Date: Sat, 27 Jun 2026 00:38:44 +0200
X-Gm-Features: AVVi8Cd8HO5CHxg-yVfCkPuc3VqPuZzqAOTCIBq2tjaQ6tAueOuUbNYcttVIMzA
Message-ID: <CAAi7L5e8Jv9KJU++U49Q2jcuLq2TAcE7VPvCfBZOiCyByFdfQQ@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 26,
 2026 at 6:35 AM Corey Minyard <corey@minyard.net>
 wrote: > > On Thu, Jun 25, 2026 at 05:59:54PM +0200, Michal Clapinski wrote:
 > > Added a new config option to allow offloading slow pa [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
X-Headers-End: 1wdFCQ-0001w5-S9
Subject: Re: [Openipmi-developer] [PATCH] ipmi:si: Add async init to ipmi_si
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
From: =?UTF-8?B?TWljaGHFgiBDxYJhcGnFhHNraQ==?= via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?TWljaGHFgiBDxYJhcGnFhHNraQ==?= <mclapinski@google.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.63 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_MIXED_CHARSET(0.88)[subject];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,google.com:s=20251104];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,google.com:-];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[mclapinski@google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime,lists.sourceforge.net:dkim,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 367776D0746

T24gRnJpLCBKdW4gMjYsIDIwMjYgYXQgNjozNeKAr0FNIENvcmV5IE1pbnlhcmQgPGNvcmV5QG1p
bnlhcmQubmV0PiB3cm90ZToKPgo+IE9uIFRodSwgSnVuIDI1LCAyMDI2IGF0IDA1OjU5OjU0UE0g
KzAyMDAsIE1pY2hhbCBDbGFwaW5za2kgd3JvdGU6Cj4gPiBBZGRlZCBhIG5ldyBjb25maWcgb3B0
aW9uIHRvIGFsbG93IG9mZmxvYWRpbmcgc2xvdyBwYXJ0IG9mCj4gPiBpbml0X2lwbWlfc2kuIFNh
dmVzIDEwMG1zIG9uIG15IHN5c3RlbS4KPgo+IEFyZSB5b3UgbG9hZGluZyBhcyBhIG1vZHVsZSBv
ciBidWlsZGluZyBJUE1JIGludG8gdGhlIGtlcm5lbD8KCkJ1aWxkaW5nIGluLiBJIGRvbid0IGtu
b3cgbXVjaCBhYm91dCBJUE1JIGJ1dCBteSBzeXN0ZW0gd29uJ3QgYm9vdAp3aXRob3V0IGl0IGJl
Y2F1c2UgaXQgY2FuJ3QgZmluZCB0aGUgZGlzay4gSSB0aGluayBzb21lIHN0b3JhZ2UKY29udHJv
bGxlcnMgbmVlZCBJUE1JPwoKPiBJJ20gdGhpbmtpbmcgdGhpcyBpcyBhIGdvb2QgaWRlYSwgYnV0
IG5vdCBxdWl0ZSBkb25lIHRoaXMgd2F5Lgo+Cj4gSSBoYXZlIGFub3RoZXIgbG9uZy1zdGFuZGlu
ZyBpc3N1ZSB0aGF0IGlmIGEgQk1DIGlzIG5vdCBvcGVyYXRpb25hbCB3aGVuCj4gdGhlIHN5c3Rl
bSBjb21lcyB1cCwgaXQgd2lsbCBub3QgY29udGludWUgdG8gdHJ5IHRvIGJyaW5nIGl0IHVwLCBz
bwo+IHlvdSBoYXZlIHRvIHJlYm9vdCBvciBob3Rtb2QgdGhlIGRldmljZSBpbiB3aGVuIGl0IGJl
Y29tZXMgYXZhaWxhYmxlLgo+Cj4gSSdtIHRoaW5raW5nIHRoYXQgaW5zdGVhZCBvZiBwdXNoaW5n
IG9mZiB0aGUgd2hvbGUgcHJvY2VzcywgcHVzaCBvZmYKPiBqdXN0IHRoZSBpbmRpdmlkdWFsIGNh
bGxzIHRvIHRyeV9zbWlfaW5pdCgpLiAgSSdtIGFzc3VtaW5nIHRoYXQncyB3aGVyZQo+IGFsbCB0
aGUgdGltZSBpcyBzcGVudCBhdCBpbml0LgoKSSBjYW4gaW1wbGVtZW50IGl0IHRoaXMgd2F5IGlu
IHYyLgoKPiBTbyB3aXRoIHRoYXQgaXQgd291bGQgYmUgcG9zc2libGUgdG8gcGVyaW9kaWNhbGx5
IHJldHJ5IGEgQk1DIHVudGlsCj4gaXQgZXZlbnR1YWxseSBjb21lcyB1cC4KPgo+IFBsdXMsIHRo
YXQgd2F5IHRoZSAidW5sb2FkX3doZW5fZW1wdHkiIGZ1bmN0aW9uIHdvbid0IGJlIGJyb2tlbiB3
aXRoCj4gdGhpcyBmZWF0dXJlLgo+Cj4gSSBhbSBhbHNvIG5vdCBxdWl0ZSBzdXJlIHdoYXQgd2ls
bCBoYXBwZW4gaWYgeW91IHRyeSB0byB1bmxvYWQgdGhlCj4gbW9kdWxlIGlmIHRoaW5ncyBhcmUg
cHVzaGVkIG9mZiBpbiBhIHN0YXJ0dXAgc3RhdGUgbGlrZSB0aGlzLgo+Cj4gSSdtIGFsc28gbm90
IHF1aXRlIHN1cmUgaG93IHRoaXMgd2lsbCBhZmZlY3QgdGhlIEFDUEkgSVBNSSBmdW5jdGlvbnMg
aW4KPiB0aGUga2VybmVsLiAgSSB3b3VsZCBndWVzcyBpdCdzIG9rLCBzaW5jZSBpdCByZWdpc3Rl
cnMgdG8ga25vdyB3aGVuIHRoZQo+IGludGVyZmFjZSBiZWNvbWVzIGF2YWlsYWJsZSwgYnV0IGl0
IG1pZ2h0IGJlIGRlbGF5ZWQgYSBiaXQgd2hpY2ggbWlnaHQKPiBjb25mdXNlIHRoaW5ncy4gIEFs
c28sIGl0IG1pZ2h0IGRlbGF5IHRoZSBkcml2ZXIgYmVpbmcgYXZhaWxhYmxlIHRpbAo+IGxhdGVy
IGF0IHN0YXJ0dXAsIHdoaWNoIG1heSBjb25mdXNlIHVzZXJsYW5kIHVzZXJzLgo+Cj4gSSdtIGFs
c28gd29uZGVyaW5nIGlmIG1ha2luZyB0aGlzIGFuIG9wdGlvbiBtYWtlcyBzZW5zZSwgb3IgaWYg
dGhpcwo+IHNob3VsZCBiZSB0aGUgd2F5IGl0IGFsd2F5cyB3b3Jrcy4gIEFuIG9wdGlvbiBtaWdo
dCBiZSBuaWNlIGlmIGl0IGJyb2tlCj4gdGhpbmdzLCBJIGd1ZXNzLiAgQnV0IGFsbW9zdCBldmVy
eW9uZSB1c2VzIG1vZHVsZXMsIGFuZCB0aGF0IHdpbGwgYmUKPiBkZWxheWVkIGZyb20gYm9vdCwg
YW55d2F5LiAgSSBndWVzcyB0aGF0IG1lYW5zIEFDUEkgaXMgbm90IGFuIGlzc3VlLAo+IGVpdGhl
ci4KClNpbmNlIG15IHN5c3RlbSB3b24ndCBib290IHdpdGhvdXQgSVBNSSwgaXQgd291bGQgcHJv
YmFibHkgYWxzbyBmYWlsCnRoZSBzYW1lIHdheSBpZiBJUE1JIHdhcyBzdGlsbCBpbml0aWFsaXpp
bmcgc28gSSBkaWRuJ3Qgd2FudCB0byBicmVhawp1bnN1c3BlY3RpbmcgdXNlcnMuIEluIHJlYWxp
dHkgaXQgcHJvYmFibHkgd291bGRuJ3QgaGFwcGVuIG9mdGVuIHNpbmNlCklQTUkgaW5pdGlhbGl6
YXRpb24gaXMgZmFzdCBlbm91Z2ggdG8gZmluaXNoIGJlZm9yZSB0aGUgcmVzdCBvZiB0aGUKa2Vy
bmVsLgoKPiBKdXN0IGtpbmQgb2YgcG9uZGVyaW5nIHRoaXMgcmlnaHQgbm93Lgo+Cj4gLWNvcmV5
Cj4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgQ2xhcGluc2tpIDxtY2xhcGluc2tpQGdv
b2dsZS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9LY29uZmlnICAgICAgICB8
ICA4ICsrKysrKwo+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jIHwgNDggKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQwIGlu
c2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2NoYXIvaXBtaS9LY29uZmlnIGIvZHJpdmVycy9jaGFyL2lwbWkvS2NvbmZpZwo+ID4gaW5kZXgg
NjY5Zjc2MDAwMTk3Li44NDE5NDA5ZGMzYjkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2NoYXIv
aXBtaS9LY29uZmlnCj4gPiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9LY29uZmlnCj4gPiBAQCAt
NjcsNiArNjcsMTQgQEAgY29uZmlnIElQTUlfU0kKPiA+ICAgICAgICAgQ3VycmVudGx5LCBvbmx5
IEtDUyBhbmQgU01JQyBhcmUgc3VwcG9ydGVkLiAgSWYKPiA+ICAgICAgICAgeW91IGFyZSB1c2lu
ZyBJUE1JLCB5b3Ugc2hvdWxkIHByb2JhYmx5IHNheSAieSIgaGVyZS4KPiA+Cj4gPiArY29uZmln
IElQTUlfU0lfQVNZTkNfSU5JVAo+ID4gKyAgICAgYm9vbCAnQXN5bmNocm9ub3VzIGluaXRpYWxp
emF0aW9uIG9mIElQTUkgU3lzdGVtIEludGVyZmFjZScKPiA+ICsgICAgIGRlcGVuZHMgb24gSVBN
SV9TSQo+ID4gKyAgICAgZGVmYXVsdCBuCj4gPiArICAgICBoZWxwCj4gPiArICAgICAgIEVuYWJs
ZXMgYXN5bmNocm9ub3VzIGluaXQgb2YgdGhlIElQTUkgU3lzdGVtIEludGVyZmFjZS4KPiA+ICsg
ICAgICAgSXQgc3BlZWRzIHVwIHRoZSBib290IHRpbWUuCj4gPiArCj4gPiAgY29uZmlnIElQTUlf
U1NJRgo+ID4gICAgICAgdHJpc3RhdGUgJ0lQTUkgU01CdXMgaGFuZGxlciAoU1NJRiknCj4gPiAg
ICAgICBkZXBlbmRzIG9uIEkyQwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lw
bWlfc2lfaW50Zi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9pbnRmLmMKPiA+IGluZGV4
IDlhOWQxMmJlOWJmNy4uM2U0MjJjN2RmNjBhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9zaV9pbnRmLmMKPiA+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lf
aW50Zi5jCj4gPiBAQCAtMzksNiArMzksNyBAQAo+ID4gICNpbmNsdWRlIDxsaW51eC9yY3VwZGF0
ZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9pcG1pLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L2lw
bWlfc21pLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2FzeW5jLmg+Cj4gPiAgI2luY2x1ZGUgImlw
bWlfc2kuaCIKPiA+ICAjaW5jbHVkZSAiaXBtaV9zaV9zbS5oIgo+ID4gICNpbmNsdWRlIDxsaW51
eC9zdHJpbmcuaD4KPiA+IEBAIC0yMTc0LDI1ICsyMTc1LDEwIEBAIHN0YXRpYyBib29sIF9faW5p
dCBpcG1pX3NtaV9pbmZvX3NhbWUoc3RydWN0IHNtaV9pbmZvICplMSwgc3RydWN0IHNtaV9pbmZv
ICplMikKPiA+ICAgICAgICAgICAgICAgZTEtPmlvLmFkZHJfZGF0YSA9PSBlMi0+aW8uYWRkcl9k
YXRhKTsKPiA+ICB9Cj4gPgo+ID4gLXN0YXRpYyBpbnQgX19pbml0IGluaXRfaXBtaV9zaSh2b2lk
KQo+ID4gK3N0YXRpYyBpbnQgX19pbml0IHNtaV9pbml0X3NjYW4odm9pZCkKPiA+ICB7Cj4gPiAg
ICAgICBzdHJ1Y3Qgc21pX2luZm8gKmUsICplMjsKPiA+Cj4gPiAtICAgICBpZiAoaW5pdGlhbGl6
ZWQpCj4gPiAtICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gLQo+ID4gLSAgICAgaXBtaV9oYXJk
Y29kZV9pbml0KCk7Cj4gPiAtCj4gPiAtICAgICBwcl9pbmZvKCJJUE1JIFN5c3RlbSBJbnRlcmZh
Y2UgZHJpdmVyXG4iKTsKPiA+IC0KPiA+IC0gICAgIGlwbWlfc2lfcGxhdGZvcm1faW5pdCgpOwo+
ID4gLQo+ID4gLSAgICAgaXBtaV9zaV9wY2lfaW5pdCgpOwo+ID4gLQo+ID4gLSAgICAgaXBtaV9z
aV9sczJrX2luaXQoKTsKPiA+IC0KPiA+IC0gICAgIGlwbWlfc2lfcGFyaXNjX2luaXQoKTsKPiA+
IC0KPiA+ICAgICAgIG11dGV4X2xvY2soJnNtaV9pbmZvc19sb2NrKTsKPiA+Cj4gPiAgICAgICAv
Kgo+ID4gQEAgLTIyNzEsNiArMjI1NywzNiBAQCBzdGF0aWMgaW50IF9faW5pdCBpbml0X2lwbWlf
c2kodm9pZCkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiAgICAgICB9Cj4gPiAgfQo+
ID4gKwo+ID4gK3N0YXRpYyB2b2lkIF9faW5pdCBhc3luY19zbWlfaW5pdCh2b2lkICpkYXRhLCBh
c3luY19jb29raWVfdCBjb29raWUpCj4gPiArewo+ID4gKyAgICAgc21pX2luaXRfc2NhbigpOwo+
ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IF9faW5pdCBpbml0X2lwbWlfc2kodm9pZCkKPiA+
ICt7Cj4gPiArICAgICBpZiAoaW5pdGlhbGl6ZWQpCj4gPiArICAgICAgICAgICAgIHJldHVybiAw
Owo+ID4gKwo+ID4gKyAgICAgaXBtaV9oYXJkY29kZV9pbml0KCk7Cj4gPiArCj4gPiArICAgICBw
cl9pbmZvKCJJUE1JIFN5c3RlbSBJbnRlcmZhY2UgZHJpdmVyXG4iKTsKPiA+ICsKPiA+ICsgICAg
IGlwbWlfc2lfcGxhdGZvcm1faW5pdCgpOwo+ID4gKwo+ID4gKyAgICAgaXBtaV9zaV9wY2lfaW5p
dCgpOwo+ID4gKwo+ID4gKyAgICAgaXBtaV9zaV9sczJrX2luaXQoKTsKPiA+ICsKPiA+ICsgICAg
IGlwbWlfc2lfcGFyaXNjX2luaXQoKTsKPiA+ICsKPiA+ICsgICAgIGlmIChJU19FTkFCTEVEKENP
TkZJR19JUE1JX1NJX0FTWU5DX0lOSVQpKSB7Cj4gPiArICAgICAgICAgICAgIGFzeW5jX3NjaGVk
dWxlKGFzeW5jX3NtaV9pbml0LCBOVUxMKTsKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7Cj4g
PiArICAgICB9Cj4gPiArCj4gPiArICAgICByZXR1cm4gc21pX2luaXRfc2NhbigpOwo+ID4gK30K
PiA+ICBtb2R1bGVfaW5pdChpbml0X2lwbWlfc2kpOwo+ID4KPiA+ICBzdGF0aWMgdm9pZCB3YWl0
X21zZ19wcm9jZXNzZWQoc3RydWN0IHNtaV9pbmZvICpzbWlfaW5mbykKPiA+IC0tCj4gPiAyLjU1
LjAucmMwLjc5OS5nZDZmOTRlZDU5My1nb29nCj4gPgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
