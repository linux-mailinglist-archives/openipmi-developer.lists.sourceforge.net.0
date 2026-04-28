Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8L/iCOSd8GkRWQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 13:45:40 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F03BA4841EE
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 13:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2zVxwJipCjbL848b93uwUPFcytACiLlKx9pvO+l//oc=; b=CZDs8uOIWIdN/8EQHvdqqKUkaV
	NFllBEwycicOmMDppMrpgsFzJAOQKRROAGuwNXLfR+gQycWj/nUh67DgEdVKuuKxH/+EcXHbRqy2e
	ow9R58GOB0JaUbpNbRtTZtqCOznZ5rlFC/1U3rTCN5EzTJ3zFcPBoTSsqsBHQqasCpfE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wHgsb-0005bM-LM;
	Tue, 28 Apr 2026 11:45:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wHgsZ-0005bG-MA
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 11:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wGegJh+XMiVUnAu14oQ8XqrjJ1magSoqSyK79ZedG1c=; b=LTXl14xg/23B0luJufJG0qnUF8
 ilGfac6jM+HEJFfi+0BZ3PEMtwirB7fQli6dh9Ha4+O6SyZQhqidXzyK1pum9XalsJ63zM+6tkNHW
 MAJMlCmzzI7g/xIq4e6bbOA31AKjWt3Eq1iKwGW2hCcfNtLTPtTRPOu6eUVkYMloJBn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wGegJh+XMiVUnAu14oQ8XqrjJ1magSoqSyK79ZedG1c=; b=L0dLU95BzIhkfV2Xi1wDa+vGyq
 rKUh95UZontRUaVTUueUqk2cEXcSs3pP+G3KZSWkNl4NxtFHdkz1doHcH9sdi/pe7FzZiPDfS2bGH
 /fRoC3F14NB3enclfB2PkQy3MReO7AX83WfzzJ7ZRTBHX2T6fW9uozb/Kd3i58jZQiBA=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wHgsY-0000eE-Uw for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 11:45:27 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-7dd73b7c757so3415622a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Apr 2026 04:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1777376721; x=1777981521; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wGegJh+XMiVUnAu14oQ8XqrjJ1magSoqSyK79ZedG1c=;
 b=H1L8ksBY4Wjx3WdGn3T86DRRwKmAVYky3NKFuO+4TwyVrgG8UuGaWjyhD+aFV8QjQL
 zdYVGjyFqBCpShlFWxeGDUM2UF8mylN6DOF2rnulEMkMqrYdrc1KtYWCYdNJVuHLLS9m
 91c3RzNjoJK6PiYZ6fkz+I40i1rSSeKBz0Ajxzl8j1PNxLgvxwDY9sZbgWkzt2tx8U1R
 9ETcAaQ1Tg+QeK+ZeECWn20YjYuqTvE8yM7Bj2RNfPu2wxyDtZUU8hQvf3o8Wv5fXUjZ
 WwY5vuZaHUaRWIjofonrCAvSKpz6VLQI3Su5N1t1XtHw4XtT7ywIy0lgg9uj45xWOh4e
 sl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777376721; x=1777981521;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wGegJh+XMiVUnAu14oQ8XqrjJ1magSoqSyK79ZedG1c=;
 b=p4bjG5qPWNw9EpyUhTYOh6973t1zdo6es3NWEc6LSeDLjIcsPOwXMUIE6S4+8gXxB1
 827QwwtPhqJHMjKN6qzC/KC7BsVI9Xfv7dbDiHX5B/nfvqXl9JxcD99IjMLW7fBEQRan
 IUlvIo4RQekoND+BkOMPYfqEl4VW3Iv3FKQpKYs7beifFwppmBwXFkaxoPo/PXaNlCef
 aJxRVmNeu2Vu687dympOSL50IDiaRsMqvK2Z8C8I6JGIH6EkPYs4zCS+msrJGG9+iylE
 h9qyTIbH9i29ttvUKTs+sFYxgmR8Q40oxEyMR312050Ci1ySA6U/KuXa4sk7CRegUTOk
 5AMg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/utQEnwell+QWUHfv3EBR20ByPoxrFHmnifvluOumvd/hgeqs5XlrJYFoPPV+zK9/D6KCqElPKJjJTdgdVH+8cZrQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxrb1JUp3zaZEhuuQC+3jjcZR4paG9bi5os2mh+rzu/HS1DpwGs
 x7ISXI3JMZQ+ufjMcmc7o2813l9izp/OokoX/OPi/AHdvUnDz0kAEbpCnItV+i1gYSA=
X-Gm-Gg: AeBDievsUU7a5X/B3KRbyk4nbfCdc9baQ4YM/sfeuDnP3BQIqyjAUL610gCmcZtkc7U
 m6DQ77CnarDxRYx/9rZLIG1LkRsMvQwJptK4XaaKJCdlSKvDMD1ekbbYgnCyTEyhMAucwr6fXcV
 J8pnFdu7/2U92knzk6T6LL/osVGqPh/EA4lMm84yrXX1Nr+kkycF2c8eSzFCCEgTwEBhsP8ZhPs
 eG4/w2jpU7IZV18xg7LDm0Seb5GJd7eyAdgkp8G32h5j23DdsxKOnjXwyfdFlgkRxcds1nYw8e/
 XKx2B/G6C9e5DGU0kBI2tKuJMKk/Zh3Pt0xH3pPO70CbXHxLhyI9+a8qIjOYtQaJD40fDnyFJS/
 WZsApvxrOuGLMBX2nOFgycfOtGAUf/Q34iitWvXzjDCzBj2U6TSUBwywwpmR1Lzj7syWFZlHwmQ
 NRKzHQrnbPL+QKcHGJ1UbZDSpgaT/1vvdMOFwjwhCQf5sj20DODMfH8IkBHItmbylORdlNZrKam
 NVfI0w5HPxoN+XQmq/lccf6XQ==
X-Received: by 2002:a05:6830:448e:b0:7de:495a:cf80 with SMTP id
 46e09a7af769-7de9a0b6c8fmr1619131a34.16.1777376721043; 
 Tue, 28 Apr 2026 04:45:21 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:689e:6348:f71f:894a])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7de984f63casm1682000a34.9.2026.04.28.04.45.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 04:45:20 -0700 (PDT)
Date: Tue, 28 Apr 2026 06:45:15 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>
Message-ID: <afCdy0Nu8glFCzqk@mail.minyard.net>
References: <20260421132544.2666174-1-corey@minyard.net>
 <20260421132544.2666174-3-corey@minyard.net>
 <aeyJ0fClAWI2lBwL@matt-Precision-5490>
 <ae1VOEhdR0H0rf0a@mail.minyard.net>
 <afCHrNN-PuXh1WzG@matt-Precision-5490>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <afCHrNN-PuXh1WzG@matt-Precision-5490>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 28, 2026 at 11:15:46AM +0100, Matt Fleming wrote:
 > On Sat, Apr 25, 2026 at 06:58:48PM -0500, Corey Minyard wrote: > > > >
 Oh, yeah. > > > > Moving it to handle_transaction_done() is not i [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wHgsY-0000eE-Uw
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: Add limits to event and
 receive message requests
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
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Camuso <tcamuso@redhat.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: F03BA4841EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto]

T24gVHVlLCBBcHIgMjgsIDIwMjYgYXQgMTE6MTU6NDZBTSArMDEwMCwgTWF0dCBGbGVtaW5nIHdy
b3RlOgo+IE9uIFNhdCwgQXByIDI1LCAyMDI2IGF0IDA2OjU4OjQ4UE0gLTA1MDAsIENvcmV5IE1p
bnlhcmQgd3JvdGU6Cj4gPiAKPiA+IE9oLCB5ZWFoLgo+ID4gCj4gPiBNb3ZpbmcgaXQgdG8gaGFu
ZGxlX3RyYW5zYWN0aW9uX2RvbmUoKSBpcyBub3QgaWRlYWwsIHRob3VnaC4gIElmCj4gPiBzb21l
dGhpbmcgd2FzIHNwZXdpbmcgcmVjZWl2ZSBtZXNzYWdlcywgaXQgd291bGQgbmV2ZXIgZ2V0IHRv
IGV2ZW50cywKPiA+IHdoaWNoIGlzIHdoeSBJIGRpZCBpdCBsaWtlIEkgZGlkLgo+ID4gCj4gPiBU
aGUgZm9sbG93aW5nIHNob3VsZCBmaXggdGhpcy4gIFlvdSBjb3VsZCBhbHNvIGhhdmUgZGlmZmVy
ZW50IGxpbWl0cyBmb3IKPiA+IHJlY2VpdmUgbWVzc2FnZXMgYW5kIGV2ZW50cywgYnV0IEkgdGhp
bmsgdGhlIGZvbGxvd2luZyBpcyBtb3JlIGNsZWFyLgo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jaGFyL2lwbWkvaXBtaV9zaV9pbnRmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3Np
X2ludGYuYwo+ID4gaW5kZXggMmE3MzkxMjMyNzBjLi5lNDZmNDE1MGNlYjUgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2ludGYuYwo+ID4gKysrIGIvZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9zaV9pbnRmLmMKPiA+IEBAIC00MTMsOCArNDEzLDEwIEBAIHN0YXRpYyB2
b2lkIHN0YXJ0X2dldHRpbmdfbXNnX3F1ZXVlKHN0cnVjdCBzbWlfaW5mbyAqc21pX2luZm8pCj4g
PiAKPiA+ICAJc3RhcnRfbmV3X21zZyhzbWlfaW5mbywgc21pX2luZm8tPmN1cnJfbXNnLT5kYXRh
LAo+ID4gIAkJICAgICAgc21pX2luZm8tPmN1cnJfbXNnLT5kYXRhX3NpemUpOwo+ID4gLQlzbWlf
aW5mby0+bnVtX3JlcXVlc3RzX2luX2Ffcm93ID0gMDsKPiA+IC0Jc21pX2luZm8tPnNpX3N0YXRl
ID0gU0lfR0VUVElOR19NRVNTQUdFUzsKPiA+ICsJaWYgKHNtaV9pbmZvLT5zaV9zdGF0ZSAhPSBT
SV9HRVRUSU5HX01FU1NBR0VTKSB7Cj4gPiArCSAgICBzbWlfaW5mby0+bnVtX3JlcXVlc3RzX2lu
X2Ffcm93ID0gMDsKPiA+ICsJICAgIHNtaV9pbmZvLT5zaV9zdGF0ZSA9IFNJX0dFVFRJTkdfTUVT
U0FHRVM7Cj4gPiArCX0KPiA+ICB9Cj4gPiAKPiA+ICBzdGF0aWMgdm9pZCBzdGFydF9nZXR0aW5n
X2V2ZW50cyhzdHJ1Y3Qgc21pX2luZm8gKnNtaV9pbmZvKQo+ID4gQEAgLTQyNSw4ICs0MjcsMTAg
QEAgc3RhdGljIHZvaWQgc3RhcnRfZ2V0dGluZ19ldmVudHMoc3RydWN0IHNtaV9pbmZvICpzbWlf
aW5mbykKPiA+IAo+ID4gIAlzdGFydF9uZXdfbXNnKHNtaV9pbmZvLCBzbWlfaW5mby0+Y3Vycl9t
c2ctPmRhdGEsCj4gPiAgCQkgICAgICBzbWlfaW5mby0+Y3Vycl9tc2ctPmRhdGFfc2l6ZSk7Cj4g
PiAtCXNtaV9pbmZvLT5udW1fcmVxdWVzdHNfaW5fYV9yb3cgPSAwOwo+ID4gLQlzbWlfaW5mby0+
c2lfc3RhdGUgPSBTSV9HRVRUSU5HX0VWRU5UUzsKPiA+ICsJaWYgKHNtaV9pbmZvLT5zaV9zdGF0
ZSAhPSBTSV9HRVRUSU5HX0VWRU5UUykgewo+ID4gKwkgICAgc21pX2luZm8tPm51bV9yZXF1ZXN0
c19pbl9hX3JvdyA9IDA7Cj4gPiArCSAgICBzbWlfaW5mby0+c2lfc3RhdGUgPSBTSV9HRVRUSU5H
X0VWRU5UUzsKPiA+ICsJfQo+IAo+IFRoYW5rcy4gRG9lcyB0aGlzIGNvcnJlY3RseSBoYW5kbGUg
YSBzdHJlYW0gb2YgbWl4ZWQgcmVjZWl2ZStldmVudAo+IGZsYWdzLCB0aG91Z2g/IElmIHdlIGJv
dW5jZSBiZXR3ZWVuIE1FU1NBR0VTIGFuZCBFVkVOVFMsIHdvbid0IHdlIGtlZXAKPiByZXNldHRp
bmcgdGhlIGNvdW50ZXIgb24gZWFjaCBzdGF0ZSB0cmFuc2l0aW9uIGFuZCBuZXZlciBoaXQgdGhl
IGxpbWl0PwoKSXQgc2hvdWxkLiAgT25jZSB0aGUgbGltaXQgaXMgcmVhY2hlZCBpdCBjbGVhcnMg
dGhlIGJpdCBpbiBtc2dfZmxhZ3MuClRoYXQgc2hvdWxkIHByZXZlbnQgdGhlIG1lc3NhZ2VzIG9y
IGV2ZW50cyBmcm9tIGJlaW5nIHJlLXJlcXVlc3RlZAp1bnRpbCB0aGUgbmV4dCBmbGFncyBmZXRj
aC4gIFNvIGlmIGEgY29udGludW91cyBzdHJlYW0gb2YgbWVzc2FnZXMKYW5kIGV2ZW50cyB3YXMg
Y29taW5nIGluLCBpdCBzaG91bGQgZmV0Y2ggMTAgbWVzc2FnZXMsIGNsZWFyIHRoZSBiaXQsCnRo
ZW4gZmV0Y2ggMTAgZXZlbnRzLCB0aGVuIGNsZWFyIHRoYXQgYml0LCB0aGVuIGdvIGJhY2sgdG8g
bm9ybWFsCm9wZXJhdGlvbi4KCk9mIGNvdXJzZSwgdGhlIG5leHQgZmxhZyBmZXRjaCB3aWxsIHN0
YXJ0IHRoZSBwcm9jZXNzIG92ZXIuCgo+IAo+IEkgd2FzIGFibGUgdG8gY29vayB1cCBhIHNpbXBs
ZSByZXBybyBpbiBRZW11IGZvciB0aGlzIGNsYXNzIG9mIGJ1Zy4KCkkgd2FzIHRoaW5raW5nIGFi
b3V0IGhvdyB0byBkbyBhbiBhdXRvbWF0ZWQgdGVzdCBmb3IgdGhpcy4gIEkgdXNlIGFuCmV4dGVy
bmFsIHNpbXVsYXRlZCBCTUMgZm9yIHRoZSBhdXRvbWF0ZWQgdGVzdHMgSSBoYXZlLiAgU28gSSds
bCB3b3JrIGluCnRoYXQgZGlyZWN0aW9uLgoKQnV0IHRoYW5rcywgdGhpcyBzaG91bGQgaGVscCBt
ZSBkZXZlbG9wIHRoYXQgdGVzdC4KCi1jb3JleQoKPiAKPiAtLS0tPjgtLS0tCj4gCj4gZGlmZiAt
LWdpdCBhL2h3L2lwbWkvaXBtaV9ibWNfc2ltLmMgYi9ody9pcG1pL2lwbWlfYm1jX3NpbS5jCj4g
aW5kZXggZmQ4NzU0OTFmNS4uMTI3ZGIzMGMwMyAxMDA2NDQKPiAtLS0gYS9ody9pcG1pL2lwbWlf
Ym1jX3NpbS5jCj4gKysrIGIvaHcvaXBtaS9pcG1pX2JtY19zaW0uYwo+IEBAIC0yNDksNiArMjQ5
LDIxIEBAIHN0cnVjdCBJUE1JQm1jU2ltIHsKPiAgICAgIHVpbnQ4X3QgZXZ0YnVmWzE2XTsKPiAg
Cj4gICAgICBRVEFJTFFfSEVBRCgsIElQTUlSY3ZCdWZFbnRyeSkgcmN2YnVmczsKPiArCj4gKyAg
ICAvKgo+ICsgICAgICogRmF1bHQgaW5qZWN0aW9uOiBzdGlja3kgRVZFTlRfTVNHX0JVRkZFUl9G
VUxMLgo+ICsgICAgICoKPiArICAgICAqIFNpbXVsYXRlcyBhIEJNQyB0aGF0IGNvbnRpbnVvdXNs
eSBnZW5lcmF0ZXMgZXZlbnRzIChlLmcuIGFmdGVyIGEKPiArICAgICAqIGNvbGQgcmVzZXQgY2F1
c2VzIHNlbnNvciBzdGF0ZSBjaGFuZ2VzKS4gIE9uY2UgYXJtZWQsIGV2ZXJ5Cj4gKyAgICAgKiBS
RUFEX0VWRU5UX01TR19CVUZGRVIgcmV0dXJucyBzdWNjZXNzIGJ1dCBuZXZlciBjbGVhcnMgdGhl
Cj4gKyAgICAgKiBFVlRfQlVGX0ZVTEwgZmxhZywgc3RhcnZpbmcgd2FpdGluZ19tc2cgaW4gdGhl
IFNJIGxheWVyJ3MKPiArICAgICAqIGhhbmRsZV9mbGFncygpIGxvb3AuICBSZXByb2R1Y2VzIHRo
ZSA1MTdtMjc3IC8gS1JOLTEyMzMgd2VkZ2UuCj4gKyAgICAgKi8KPiArICAgIGJvb2wgICAgIGZp
X3N0aWNreV9ldmVudHM7ICAgLyogZW5hYmxlIHZpYSBwcm9wZXJ0eSAqLwo+ICsgICAgdWludDMy
X3QgZmlfZXZ0X2FybV9hZnRlcjsgICAvKiBhcm0gYWZ0ZXIgTiBjb21wbGV0ZWQgcmVzcG9uc2Vz
ICovCj4gKyAgICB1aW50MzJfdCBmaV9ldnRfcnNwX2NvdW50OyAgIC8qIHJlc3BvbnNlcyBjb21w
bGV0ZWQgc28gZmFyICovCj4gKyAgICBib29sICAgICBmaV9ldnRfYXJtZWQ7ICAgICAgIC8qIGZh
dWx0IGlzIGFjdGl2ZSAqLwo+ICsgICAgdWludDMyX3QgZmlfZXZ0X3JlYWRfY291bnQ7ICAvKiBS
RUFEX0VWRU5UX01TR19CVUZGRVIgY2FsbHMgc2VydmVkICovCj4gIH07Cj4gIAo+ICAjZGVmaW5l
IElQTUlfQk1DX01TR19GTEFHX1dBVENIRE9HX1RJTUVPVVRfTUFTSyAgICAgICAgKDEgPDwgMykK
PiBAQCAtNDk0LDcgKzUwOSw3IEBAIHN0YXRpYyBpbnQgc2VsX2FkZF9ldmVudChJUE1JQm1jU2lt
ICppYnMsIHVpbnQ4X3QgKmV2ZW50KQo+ICBzdGF0aWMgaW50IGF0dG5fc2V0KElQTUlCbWNTaW0g
KmlicykKPiAgewo+ICAgICAgcmV0dXJuIElQTUlfQk1DX01TR19GTEFHX1JDVl9NU0dfUVVFVUVf
U0VUKGlicykKPiAtICAgICAgICB8fCBJUE1JX0JNQ19NU0dfRkxBR19FVlRfQlVGX0ZVTExfU0VU
KGlicykKPiArICAgICAgICB8fCAoIWlicy0+ZmlfZXZ0X2FybWVkICYmIElQTUlfQk1DX01TR19G
TEFHX0VWVF9CVUZfRlVMTF9TRVQoaWJzKSkKPiAgICAgICAgICB8fCBJUE1JX0JNQ19NU0dfRkxB
R19XQVRDSERPR19USU1FT1VUX01BU0tfU0VUKGlicyk7Cj4gIH0KPiAgCj4gQEAgLTc1MCw2ICs3
NjUsNDggQEAgc3RhdGljIHZvaWQgaXBtaV9zaW1faGFuZGxlX2NvbW1hbmQoSVBNSUJtYyAqYiwK
PiAgIG91dDoKPiAgICAgIGstPmhhbmRsZV9yc3AocywgbXNnX2lkLCByc3AuYnVmZmVyLCByc3Au
bGVuKTsKPiAgCj4gKyAgICAvKgo+ICsgICAgICogRmF1bHQgaW5qZWN0aW9uOiBjb3VudCBjb21w
bGV0ZWQgcmVzcG9uc2VzIGFuZCBhcm0gc3RpY2t5Cj4gKyAgICAgKiBFVkVOVF9NU0dfQlVGRkVS
X0ZVTEwgYWZ0ZXIgdGhlIGNvbmZpZ3VyZWQgdGhyZXNob2xkLgo+ICsgICAgICovCj4gKyAgICBp
ZiAoaWJzLT5maV9zdGlja3lfZXZlbnRzICYmICFpYnMtPmZpX2V2dF9hcm1lZCkgewo+ICsgICAg
ICAgIGlicy0+ZmlfZXZ0X3JzcF9jb3VudCsrOwo+ICsgICAgICAgIGlmIChpYnMtPmZpX2V2dF9y
c3BfY291bnQgPj0gaWJzLT5maV9ldnRfYXJtX2FmdGVyKSB7Cj4gKyAgICAgICAgICAgIGlicy0+
ZmlfZXZ0X2FybWVkID0gdHJ1ZTsKPiArICAgICAgICAgICAgaWJzLT5maV9ldnRfcmVhZF9jb3Vu
dCA9IDA7Cj4gKwo+ICsgICAgICAgICAgICAvKgo+ICsgICAgICAgICAgICAgKiBTZWVkIHRoZSBl
dmVudCBidWZmZXIgd2l0aCBhIHN5bnRoZXRpYyBzZW5zb3IgZXZlbnQKPiArICAgICAgICAgICAg
ICogKHNlbnNvciB0eXBlIDB4MDEgPSBUZW1wZXJhdHVyZSwgZXZlbnQgdHlwZSAweDAxID0KPiAr
ICAgICAgICAgICAgICogdGhyZXNob2xkLCBldmQxID0gdXBwZXIgY3JpdGljYWwgZ29pbmcgaGln
aCkuCj4gKyAgICAgICAgICAgICAqIFRoaXMgbWF0Y2hlcyB3aGF0IHJlYWwgQk1DcyBnZW5lcmF0
ZSBhZnRlciBhIGNvbGQgcmVzZXQuCj4gKyAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICBt
ZW1zZXQoaWJzLT5ldnRidWYsIDAsIDE2KTsKPiArICAgICAgICAgICAgaWJzLT5ldnRidWZbMl0g
ID0gMHgwMjsgLyogU3lzdGVtIGV2ZW50IHJlY29yZCAqLwo+ICsgICAgICAgICAgICBpYnMtPmV2
dGJ1Zls3XSAgPSBpYnMtPnBhcmVudC5zbGF2ZV9hZGRyOwo+ICsgICAgICAgICAgICBpYnMtPmV2
dGJ1Zls5XSAgPSAweDA0OyAvKiBGb3JtYXQgdmVyc2lvbiAqLwo+ICsgICAgICAgICAgICBpYnMt
PmV2dGJ1ZlsxMF0gPSAweDAxOyAvKiBTZW5zb3IgdHlwZTogVGVtcGVyYXR1cmUgKi8KPiArICAg
ICAgICAgICAgaWJzLT5ldnRidWZbMTFdID0gMHgwMTsgLyogU2Vuc29yIG51bWJlciAqLwo+ICsg
ICAgICAgICAgICBpYnMtPmV2dGJ1ZlsxMl0gPSAweDAxOyAvKiBFdmVudCB0eXBlOiB0aHJlc2hv
bGQgKi8KPiArICAgICAgICAgICAgaWJzLT5ldnRidWZbMTNdID0gMHgwOTsgLyogVXBwZXIgY3Jp
dGljYWwgZ29pbmcgaGlnaCAqLwo+ICsgICAgICAgICAgICBpYnMtPmV2dGJ1ZlsxNF0gPSAweDU3
OyAvKiBUaHJlc2hvbGQgdmFsdWUgKi8KPiArICAgICAgICAgICAgaWJzLT5ldnRidWZbMTVdID0g
MHgwMDsgLyogU2VxdWVuY2UgKGluY3JlbWVudGVkIG9uIHJlYWRzKSAqLwo+ICsKPiArICAgICAg
ICAgICAgaWJzLT5tc2dfZmxhZ3MgfD0gSVBNSV9CTUNfTVNHX0ZMQUdfRVZUX0JVRl9GVUxMOwo+
ICsKPiArICAgICAgICAgICAgLyogRW5zdXJlIGV2ZW50IG1lc3NhZ2UgYnVmZmVyIGlzIGVuYWJs
ZWQgaW4gZ2xvYmFsIGVuYWJsZXMKPiArICAgICAgICAgICAgICogc28gdGhlIGtlcm5lbCBzZWVz
IGl0LiAgQWxzbyBlbmFibGUgZXZlbnQgbG9nZ2luZy4KPiArICAgICAgICAgICAgICovCj4gKyAg
ICAgICAgICAgIGlicy0+Ym1jX2dsb2JhbF9lbmFibGVzIHw9ICgxIDw8IElQTUlfQk1DX0VWRU5U
X01TR19CVUZfQklUKQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAo
MSA8PCBJUE1JX0JNQ19FVkVOVF9MT0dfQklUKTsKPiArCj4gKyAgICAgICAgICAgIGstPnNldF9h
dG4ocywgMSwgYXR0bl9pcnFfZW5hYmxlZChpYnMpKTsKPiArCj4gKyAgICAgICAgICAgIGZwcmlu
dGYoc3RkZXJyLCAiW0ZJXSBzdGlja3ktZXZlbnRzIGFybWVkIGFmdGVyICV1IHJlc3BvbnNlc1xu
IiwKPiArICAgICAgICAgICAgICAgICAgICBpYnMtPmZpX2V2dF9yc3BfY291bnQpOwo+ICsgICAg
ICAgIH0KPiArICAgIH0KPiArCj4gICAgICBuZXh0X3RpbWVvdXQoaWJzKTsKPiAgfQo+ICAKPiBA
QCAtMTAxMyw4ICsxMDcwLDE0IEBAIHN0YXRpYyB2b2lkIGNscl9tc2dfZmxhZ3MoSVBNSUJtY1Np
bSAqaWJzLAo+ICB7Cj4gICAgICBJUE1JSW50ZXJmYWNlICpzID0gaWJzLT5wYXJlbnQuaW50ZjsK
PiAgICAgIElQTUlJbnRlcmZhY2VDbGFzcyAqayA9IElQTUlfSU5URVJGQUNFX0dFVF9DTEFTUyhz
KTsKPiArICAgIHVpbnQ4X3QgY2xlYXJfbWFzayA9IGNtZFsyXTsKPiArCj4gKyAgICBpZiAoaWJz
LT5maV9ldnRfYXJtZWQpIHsKPiArICAgICAgICAvKiBEb24ndCBhbGxvdyBjbGVhcmluZyBFVlRf
QlVGX0ZVTEwgd2hlbiBzdGlja3kgZXZlbnRzIGFjdGl2ZSAqLwo+ICsgICAgICAgIGNsZWFyX21h
c2sgJj0gfklQTUlfQk1DX01TR19GTEFHX0VWVF9CVUZfRlVMTDsKPiArICAgIH0KPiAgCj4gLSAg
ICBpYnMtPm1zZ19mbGFncyAmPSB+Y21kWzJdOwo+ICsgICAgaWJzLT5tc2dfZmxhZ3MgJj0gfmNs
ZWFyX21hc2s7Cj4gICAgICBrLT5zZXRfYXRuKHMsIGF0dG5fc2V0KGlicyksIGF0dG5faXJxX2Vu
YWJsZWQoaWJzKSk7Cj4gIH0KPiAgCj4gQEAgLTEwNDAsNyArMTEwMywxOSBAQCBzdGF0aWMgdm9p
ZCByZWFkX2V2dF9tc2dfYnVmKElQTUlCbWNTaW0gKmlicywKPiAgICAgIGZvciAoaSA9IDA7IGkg
PCAxNjsgaSsrKSB7Cj4gICAgICAgICAgcnNwX2J1ZmZlcl9wdXNoKHJzcCwgaWJzLT5ldnRidWZb
aV0pOwo+ICAgICAgfQo+IC0gICAgaWJzLT5tc2dfZmxhZ3MgJj0gfklQTUlfQk1DX01TR19GTEFH
X0VWVF9CVUZfRlVMTDsKPiArCj4gKyAgICBpZiAoaWJzLT5maV9ldnRfYXJtZWQpIHsKPiArICAg
ICAgICAvKgo+ICsgICAgICAgICAqIFN0aWNreSBtb2RlOiByZXR1cm4gc3VjY2VzcyBidXQga2Vl
cCBFVlRfQlVGX0ZVTEwgc2V0Lgo+ICsgICAgICAgICAqIFZhcnkgdGhlIGV2ZW50IGRhdGEgc2xp
Z2h0bHkgc28gdGhlIGtlcm5lbCBkb2Vzbid0Cj4gKyAgICAgICAgICogZGUtZHVwbGljYXRlIChp
bmNyZW1lbnQgZXZkMyBhcyBhIHNlcXVlbmNlIG51bWJlcikuCj4gKyAgICAgICAgICovCj4gKyAg
ICAgICAgaWJzLT5maV9ldnRfcmVhZF9jb3VudCsrOwo+ICsgICAgICAgIGlicy0+ZXZ0YnVmWzE1
XSA9ICh1aW50OF90KShpYnMtPmZpX2V2dF9yZWFkX2NvdW50ICYgMHhmZik7Cj4gKyAgICAgICAg
LyogRG9uJ3QgY2xlYXIgdGhlIGZsYWcg4oCUIHN0YXJ2YXRpb24gY29udGludWVzICovCj4gKyAg
ICB9IGVsc2Ugewo+ICsgICAgICAgIGlicy0+bXNnX2ZsYWdzICY9IH5JUE1JX0JNQ19NU0dfRkxB
R19FVlRfQlVGX0ZVTEw7Cj4gKyAgICB9Cj4gICAgICBrLT5zZXRfYXRuKHMsIGF0dG5fc2V0KGli
cyksIGF0dG5faXJxX2VuYWJsZWQoaWJzKSk7Cj4gIH0KPiAgCj4gQEAgLTI2NzAsNiArMjc0NSw4
IEBAIHN0YXRpYyBjb25zdCBQcm9wZXJ0eSBpcG1pX3NpbV9wcm9wZXJ0aWVzW10gPSB7Cj4gICAg
ICBERUZJTkVfUFJPUF9TVFJJTkcoImxhbi5uZXRtYXNrIiwgSVBNSUJtY1NpbSwgbGFuLmFyZ19u
ZXRtYXNrKSwKPiAgICAgIERFRklORV9QUk9QX1NUUklORygibGFuLmRlZmd3X2lwYWRkciIsIElQ
TUlCbWNTaW0sIGxhbi5hcmdfZGVmZ3dfaXBhZGRyKSwKPiAgICAgIERFRklORV9QUk9QX01BQ0FE
RFIoImxhbi5kZWZnd19tYWNhZGRyIiwgSVBNSUJtY1NpbSwgbGFuLmRlZmd3X21hY2FkZHIpLAo+
ICsgICAgREVGSU5FX1BST1BfQk9PTCgiZmlfc3RpY2t5X2V2ZW50cyIsIElQTUlCbWNTaW0sIGZp
X3N0aWNreV9ldmVudHMsIGZhbHNlKSwKPiArICAgIERFRklORV9QUk9QX1VJTlQzMigiZmlfZXZ0
X2FybV9hZnRlciIsIElQTUlCbWNTaW0sIGZpX2V2dF9hcm1fYWZ0ZXIsIDQwKSwKPiAgfTsKPiAg
Cj4gIHN0YXRpYyB2b2lkIGlwbWlfc2ltX2NsYXNzX2luaXQoT2JqZWN0Q2xhc3MgKm9jLCBjb25z
dCB2b2lkICpkYXRhKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
