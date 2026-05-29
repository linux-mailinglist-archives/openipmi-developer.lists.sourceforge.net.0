Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBZWBXTGGWoIzAgAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 May 2026 19:01:40 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 490A76060E0
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 May 2026 19:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mtTiyWs/1epI7gqDStAQbC0f7ZFh3tJ7NDLc0Vdtn2Y=; b=AbBtBPUEo1C6S0eq0HRTFceTN2
	yXmLmPLX6SLFcQ97Cwva0keDTGzv/jHtzdvfw5zvJbqzJzGcIXJQB3FbEpt44cenbYthRrUPIG+Xh
	kmnL9144ER4jd2G/GeBd25a9OfqaCkeQxj7geL/AGbsJ5+i/Qu6VeBJASa4YQZ6g89F0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wT0aJ-0003RR-HN;
	Fri, 29 May 2026 17:01:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wT0aH-0003RK-GE
 for openipmi-developer@lists.sourceforge.net;
 Fri, 29 May 2026 17:01:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gbpxmbYT7Ke6jfRem13FLNzIhR0XDA5ecbYjVCBoFgQ=; b=Nj2SXPYefID9IBLqGEeIlIwq0z
 jjRdjYj52fXMmRaUBm4GFjMaxobzqjwlKhkmY5fKOPWK+LGVmw5CnzI9r1keJpxLVo2ESaZIg7Kc3
 JdiuTOXnDTaIUjE4vRrxXEA6ipI3pLd7eSVOVoVmeFLsFKK+ChLONygJCT83THTseSQ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gbpxmbYT7Ke6jfRem13FLNzIhR0XDA5ecbYjVCBoFgQ=; b=OCkZhU1hGEAtz521CfVtTp8H0V
 g5Szg007owCbfe9MEFBz3e3V7c2YEMnmuqCPKg6OBc8QFSXUHb8UguZgCUsjkgZy7glML6/VnPCPY
 En6mbIRwOf6bc0paFTIFRxEwB3wt5Bu+pjFApzPx+PcRiZiCY6cr26Qzjwtc+45d/mtI=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wT0aD-0001wn-Pf for openipmi-developer@lists.sourceforge.net;
 Fri, 29 May 2026 17:01:21 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-7dcd17e19b6so7927378a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 29 May 2026 10:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1780074067; x=1780678867; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gbpxmbYT7Ke6jfRem13FLNzIhR0XDA5ecbYjVCBoFgQ=;
 b=UZWex/BXV2920whJ9074Ri8yZqyC0MpX4SIaUgZ62caHFjB9cU4F+V8XToByDyRNok
 q7GUi4+unYHoGEoRDKK3FnTsTW/mNhcQ7ct4flJ/p9JFAvT3d3crChi7H+tCUVys3Bhe
 iBEMx0dkhe1a9fF7t02SH8ONqFPeCXbwTvvuDZGIbcUxTK4TfgubqsK62BKJSNhW16Uj
 w43tUaewQlJZyhwDsILpTFpYkO6H6oaAcEj+lZp0RxxY2zWBww9Kq9clcA9Z1ADp/Irq
 ABBbecVeLqWJRexkDi7Au/BxiGe5hZUVCYotpHSm11WaWvewsOqaE6rAsXTC4o+VeHBK
 G6wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780074067; x=1780678867;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gbpxmbYT7Ke6jfRem13FLNzIhR0XDA5ecbYjVCBoFgQ=;
 b=ZWk4sCn5gEc/tWs7oyzxuMHzQ7MfSQJUNX9s9lWSeIppkXjlzRhGrqJ/8j0X5xNz+H
 XUKQImUGX72iuMzKZ3pKW/5RySmgtbD3RdCHWvgWZn/GSvBM0m0bzIGuVvYDnxywsGjd
 w6y3DtGM2QPTSETX85/r1b1ucZvqELEmgmXv758bL4OrxKa6UElZYidDQYK5+J7HWwe8
 tXPcQvmlbYHbJmC0OSY7kbIsrq1jrGi5iY8oc+aCLXtq/5e3H4wRMBsyouBRUV7ZEFsl
 Ij76LUdFaDXqJyRwkuw4pEBGS7a7JjkKemQ4tjoU+6PaQEPR5JGGLyChOuza3iq8IbJM
 9q0g==
X-Gm-Message-State: AOJu0Yx1833/W3ztCAYiOVtmGUjAGAnkhIsVGRRv/FE28mSwvncAElbb
 gJmVX3YLSnX386CjUGc62k87VJi7YlASEeuUYE2BMYymyct0j3PU+JYPBuCcpvq8qQ5IbRHArKq
 cLX0a
X-Gm-Gg: Acq92OHv+Sp0E7HZiRVABFLkQJZzUC80Z20v/94kK58pNdK1o+mQm39xtQfFmn7OHHx
 Cr6qyIty+5WZUe1Vz+c+fGJycSRMbHJLVEGS+s0NVcxKcnj+eOtOv7bUkmmkQQwmAJ0q7wF9G1e
 UaXZkPnb2LPEzUzqw4W55ww/J0JPFg/eW0Q9Bi9IC41xuk1WeNwpeW27rxpdnTy+wvi8ZNWxxLy
 mzN4e0XUJjJxDHc3AJtMJiJCXUFik1gObhu6iY4MCSYQ3l9zDi9zdUYJxI32ywtsnXHRqULjmLB
 yoXFSXLL1kI/OWoghk6l/Gvyyu/dGWGcA0ZIhImMvjrR8sCH3mAJnLKfeXbq48y6U93ekvvtgjw
 HI4e4p3F5F2vCPZz4rEfk1GFXMtRPxfqm6L9vRtLtvxueR7BFhrcL1ya1Y5FzUm/+1Zd8nYm5dZ
 gERgWVEZjC42VYgsQD3YnACqFpQ+Kx/fNfuKasj/UX8/XyP5lBz7gyaZ21VbDfpHp3VspApR9Da
 +QaOuxX4YIvElWVZiNtr6Byaw==
X-Received: by 2002:a05:6830:698e:b0:7dc:dd58:50c7 with SMTP id
 46e09a7af769-7e6a1de8f9bmr444711a34.18.1780074067255; 
 Fri, 29 May 2026 10:01:07 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:4686:1f25:6e63:122c])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7e695d8d92bsm1797687a34.25.2026.05.29.10.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2026 10:01:06 -0700 (PDT)
Date: Fri, 29 May 2026 12:01:03 -0500
From: Corey Minyard <corey@minyard.net>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Message-ID: <ahnGT7yytzIZn4ph@mail.minyard.net>
References: <5966a65daf432613a58af373af79c9c4421b3985.1780052427.git.u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5966a65daf432613a58af373af79c9c4421b3985.1780052427.git.u.kleine-koenig@baylibre.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, May 29, 2026 at 01:03:39PM +0200, Uwe Kleine-König
    (The Capable Hub) wrote: > The driver explicitly set the .driver_data member
    of struct > platform_device_id to zero without relying on that [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.46 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wT0aD-0001wn-Pf
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi:ssif: Drop unused
 assignment of platform_device_id driver data
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Queue-Id: 490A76060E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCBNYXkgMjksIDIwMjYgYXQgMDE6MDM6MzlQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgKFRoZSBDYXBhYmxlIEh1Yikgd3JvdGU6Cj4gVGhlIGRyaXZlciBleHBsaWNpdGx5IHNldCB0
aGUgLmRyaXZlcl9kYXRhIG1lbWJlciBvZiBzdHJ1Y3QKPiBwbGF0Zm9ybV9kZXZpY2VfaWQgdG8g
emVybyB3aXRob3V0IHJlbHlpbmcgb24gdGhhdCB2YWx1ZS4gRHJvcCB0aGlzCj4gdW51c2VkIGFz
c2lnbm1lbnRzLgo+IAo+IFdoaWxlIHRvdWNoaW5nIHRoaXMgYXJyYXkgdXNlIGEgbmFtZWQgaW5p
dGlhbGl6ZXIgZm9yIGFzc2lnbmluZyAubmFtZS4KClN1cmUsIHRoaXMgaXMgZmluZSwgaXQncyBp
biBteSBuZXh0IHRyZWUuCgotY29yZXkKCj4gCj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1L
w7ZuaWcgKFRoZSBDYXBhYmxlIEh1YikgPHUua2xlaW5lLWtvZW5pZ0BiYXlsaWJyZS5jb20+Cj4g
LS0tCj4gSGVsbG8sCj4gCj4gdGhpcyBwYXRjaCBpcyBhIHByZXBhcmF0aW9uIGZvciBjaGFuZ2lu
ZyBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlX2lkCj4gc2VlIGUuZy4KPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvY292ZXIuMTc3OTg3ODAwNC5naXQudS5rbGVpbmUta29lbmlnQGJheWxpYnJl
LmNvbS8KPiBmb3IgdGhlIGRldGFpbHMgYWJvdXQgdGhlIHF1ZXN0Lgo+IAo+IEJlc3QgcmVnYXJk
cwo+IFV3ZQo+IAo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyB8IDIgKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9zc2lmLmMKPiBpbmRleCBhZGQwNDNiODEyZWEuLjA3ZjFkMjMyN2JiNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1p
L2lwbWlfc3NpZi5jCj4gQEAgLTIxMjcsNyArMjEyNyw3IEBAIHN0YXRpYyB2b2lkIHNzaWZfcGxh
dGZvcm1fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKmRldikKPiAgfQo+ICAKPiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2VfaWQgc3NpZl9wbGF0X2lkc1tdID0gewo+
IC0gICAgeyAiZG1pLWlwbWktc3NpZiIsIDAgfSwKPiArICAgIHsgLm5hbWUgPSAiZG1pLWlwbWkt
c3NpZiIgfSwKPiAgICAgIHsgfQo+ICB9Owo+ICBNT0RVTEVfREVWSUNFX1RBQkxFKHBsYXRmb3Jt
LCBzc2lmX3BsYXRfaWRzKTsKPiAKPiBiYXNlLWNvbW1pdDogZjdhZjkxYWRjMjMwYWE5OWUyMzMz
MGVjZjg1YmM5YmFkZDk3ODBhZAo+IC0tIAo+IDIuNDcuMwo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
