Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNl1ETefDGq8jwUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 19:34:47 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 611A558326A
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 19:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h+7kjfdHlVEm9NOcEhjAkHfcul0bo0ctD469DU3j55M=; b=P3S7s61HYF0chIW/Pp6v//jEi7
	gJ03b/T0XjgtLYNvUanHsBK133Kuw2mSqKDS+aC06FNHsYT9u9OJOdD3rXw5j0PvKeOYcjRasKshk
	BQKB5HvfEoPUdCkx0cBBbAKJW7vPQEdVlSJS0moCe/o5ul4Z1++jERPFf8qE1hGmS3X0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wPOKx-0001HF-1n;
	Tue, 19 May 2026 17:34:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wPOKv-0001Gy-FL
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 17:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GrsphKIpYvzqaOYROTJU7Wmg2e+Vy1DQyFLWqkwAMt4=; b=PjnrTCPU6ps+HqqGiIjU16EdLQ
 /FVMdnAh4eGXL60eUKYmqTuegAeE/5e7S8/CkA0PPgqhSJrzuZYeVg46ASRrFYIMKcDaHYxbAld5J
 hvOx/9BTFHaCJaiHBhV6xCeBxCOAZpkhfcGeIEXhW1ecP3CzLSy+G/dZMUUW9256VeYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GrsphKIpYvzqaOYROTJU7Wmg2e+Vy1DQyFLWqkwAMt4=; b=ELkkUI619WtFgRH+ETb7Ov7Lny
 YR/oJ4hTPt1sRFO7Pb9K+5E+AW4CLHbJF5BgPnjcDpiRaMdc76pqYVSTMCR8MCkygEZQyzS5YTj3K
 xwi7zTro3Q7BrqHZqpMRiipo13wQCn8pn4T/+CIe37SznqeRM6ZbGIc7g9x3jT4fV6Qc=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wPOKu-0004wT-5O for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 17:34:34 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 46e09a7af769-7e36bb16a92so2315801a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 May 2026 10:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1779212062; x=1779816862; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GrsphKIpYvzqaOYROTJU7Wmg2e+Vy1DQyFLWqkwAMt4=;
 b=KqIjFinNBljzlbQezW9ZZnQIWqpZa0ir/j0G1HHWb7a/gR+jXgFa3tLDSxdNlLOd5Z
 g8xusbT2AMnD6rWg6GTUJ6J0p7WjsKxuof8kzj6gJx93O92czm/Q/cfwC8CY33CLitdI
 SkP4dzrafFtmzappkMLzt/C9vKIFXCVZBreq9iLaxSoz7CGzewyTJQBMCiOHmQ9Yigdi
 /qR9qL3RGlEe/DC8w0BQ9XTcslnCrk1rZyfu8s+2RYKHah+1m6D9qTKibO0oO1vCaI4S
 yWHe3deRuSeIo5f6380TSRDbkLBoZM8b9LFZeF1UyHLw3oAVOq8iLP7G+2tezmCHpwl7
 YUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779212062; x=1779816862;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GrsphKIpYvzqaOYROTJU7Wmg2e+Vy1DQyFLWqkwAMt4=;
 b=KBwQjatMPkHhUGNLvGU3B2ljfQcKvlL2aBi4/8sLk4fqHjDVhlCaH/z2g5lbPPPGDp
 XK7dSof2JQJ8n1KkI7T+33wL0Rl9sQfuEuzotqtaiR3FlrZGgVdE4/9vmIyvhYaH6VVN
 4PvSdIOmqbvj0jYE5dy0q8LyBL4XATI/cMkW9lGsxRLBefkpvyGEjMbnoHZs0JMIbAi6
 nKfzCSGbKekESbAQQa2E8pmYpRwJ1gn4wB3yRlbMeFy88dvPrsUSLsQjB9pdVLU35/lg
 mdZdqE+yDtlvQC6m8gtKK0R9409VAlgG1FNsB5yZEF9LmAfgg8E6TJuAlqzY6SKyIhqG
 AIhg==
X-Gm-Message-State: AOJu0YwMXpueVM1WP/ah4/WxaHM5PHtp9fLnbc0l0Fzxgy8iB+quWj9z
 9mZNd7kvP8GpHQPNesPzsPl48/5WVScixI1iG8n6SsIGGUPHlXdjwXWwy5GAzntWFalLJfgK6bD
 ydorF
X-Gm-Gg: Acq92OGFI7PFJfPLhN2yR84S4+EM2qqUYeTwHlI74Nf2MBM7x7+bIeO/1msZx65miIm
 iBmmN/ONdCNPsaSZ3na6tANoaxITP4g32Lg/okdZxK/jUAekUt2jKHmZk/aXX1SrfgLkZiV+M1y
 6/0YSviGP7TtOjK61Eedku9fqXt704NtTxD/IwHwsQ82SZI3dSlLSQCPV6nLWCGHsirwLN9s6jn
 TJas3ve0Hwrq1S9zLVdb75BMx4TU1W0fk7JfsBjONof/5FvTax92ZCY4RHvtaIT0e5WLKAGVLES
 h5UxQzqJTdNusCAef+uBKIICm8cFbVT+w4hkWG4KKKsG/roGdaUOLxIBNDbQgEvPlVeuNnYPto1
 Sgq1A/Ew/gfOTgaDfGyPor0n5qp1YlxCgjF1emtXH4rQgNAhpBLl+kAxTCIytkX7c0fAA7gKBL4
 UmqZgsPa+/TXrPk3tf9fve/hbgndISuedqTEIjVHuhHPIPRBhLzym9sYCRyHoqDcxTA40Dk7M3a
 b5HSLkiCr0ujw==
X-Received: by 2002:a05:6830:d17:b0:7dc:db04:d316 with SMTP id
 46e09a7af769-7e4ea07bd39mr14102238a34.8.1779212061954; 
 Tue, 19 May 2026 10:34:21 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:aa2:381f:151a:2c86])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7e55bbd08ccsm10103841a34.17.2026.05.19.10.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2026 10:34:21 -0700 (PDT)
Date: Tue, 19 May 2026 12:34:18 -0500
From: Corey Minyard <corey@minyard.net>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Message-ID: <agyfGrjUfbZOcVJu@mail.minyard.net>
References: <20260519150156.1590826-2-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519150156.1590826-2-u.kleine-koenig@baylibre.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, May 19, 2026 at 05:01:56PM +0200, Uwe Kleine-König
    (The Capable Hub) wrote: > While being less compact, using named initializers
    allows to more easily > see which members of the structs are a [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.50 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wPOKu-0004wT-5O
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi: Use named initializers
 for struct i2c_device_id
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
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
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Queue-Id: 611A558326A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMDU6MDE6NTZQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgKFRoZSBDYXBhYmxlIEh1Yikgd3JvdGU6Cj4gV2hpbGUgYmVpbmcgbGVzcyBjb21wYWN0LCB1
c2luZyBuYW1lZCBpbml0aWFsaXplcnMgYWxsb3dzIHRvIG1vcmUgZWFzaWx5Cj4gc2VlIHdoaWNo
IG1lbWJlcnMgb2YgdGhlIHN0cnVjdHMgYXJlIGFzc2lnbmVkIHdoaWNoIHZhbHVlIHdpdGhvdXQg
aGF2aW5nCj4gdG8gbG9va3VwIHRoZSBkZWNsYXJhdGlvbiBvZiB0aGUgc3RydWN0LiBBbmQgaXQn
cyBhbHNvIG1vcmUgcm9idXN0Cj4gYWdhaW5zdCBjaGFuZ2VzIHRvIHRoZSBzdHJ1Y3QgZGVmaW5p
dGlvbi4KPiAKPiBUaGlzIHBhdGNoIGRvZXNuJ3QgbW9kaWZ5IHRoZSBjb21waWxlZCBhcnJheXMs
IG9ubHkgdGhlaXIgcmVwcmVzZW50YXRpb24KPiBpbiBzb3VyY2UgZm9ybSBiZW5lZml0cy4gVGhl
IGZvcm1lciB3YXMgY29uZmlybWVkIHdpdGggeDg2IGFuZCBhcm02NAo+IGJ1aWxkcy4KPiAKPiBX
aGlsZSB0b3VjaGluZyB0aGVzZSBhcnJheXMsIHVuaWZ5IHVzYWdlIG9mIHdoaXRlc3BhY2UgaW4g
dGhlIGxpc3QKPiB0ZXJtaW5hdG9yLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2
bmlnIChUaGUgQ2FwYWJsZSBIdWIpIDx1LmtsZWluZS1rb2VuaWdAYmF5bGlicmUuY29tPgo+IC0t
LQo+IEhlbGxvLAo+IAo+IHRoaXMgcGF0Y2ggaXMgcGFydCBvZiBhIGJpZ2dlciBxdWVzdCB0byB1
c2UgbmFtZWQgaW5pdGlhbGl6ZXJzIGZvcgo+IG1haW5seSBzdHJ1Y3QgaTJjX2RldmljZV9pZDo6
ZHJpdmVyX2RhdGEgdG8gYmUgYWJsZSB0byBtb2RpZnkKPiBpMmNfZGV2aWNlX2lkLiBTZWUgZS5n
Lgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDUxODExMTIwMy42Mzk2MDMtMi11
LmtsZWluZS1rb2VuaWdAYmF5bGlicmUuY29tLwo+IGZvciB0aGUgZGV0YWlscy4KPiAKPiBUaGlz
IHBhdGNoIGhlcmUgaXNuJ3QgY3JpdGljYWwgZm9yIHRoaXMgcXVlc3QsIGFzIG5vIGRyaXZlciBt
YWtlcyB1c2Ugb2YKPiAuZHJpdmVyX2RhdGEsIHNvIGFwYXJ0IGZyb20gdGhlIGJldHRlciByZWFk
YWJpbGl0eSB0aGlzIGlzIG9ubHkgYWJvdXQKPiBjb25zaXN0ZW5jeSB3aXRoIG90aGVyIHN1YnN5
c3RlbXMuCgpZZXMsIHRoaXMgZG9lc24ndCBzZWVtIHNvIGNyaXRpY2FsLCBidXQgaXQncyBhbiBp
bXByb3ZlbWVudC4gIFRoaXMgaXMgaW4KbXkgcXVldWUgZm9yIG5leHQgcmVsZWFzZS4KClRoYW5r
cywKCi1jb3JleQoKPiAKPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPiAKPiAgZHJpdmVycy9jaGFyL2lw
bWkvaXBtYl9kZXZfaW50LmMgfCA0ICsrLS0KPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1i
LmMgICAgfCA0ICsrLS0KPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgICAgfCAyICst
Cj4gIGRyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgICAgIHwgMiArLQo+ICA0IGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1i
X2Rldl9pbnQuYwo+IGluZGV4IDJmZTFkMjA1Y2U0ZS4uNjgwZmYxNWMzMGFiIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jCj4gKysrIGIvZHJpdmVycy9jaGFy
L2lwbWkvaXBtYl9kZXZfaW50LmMKPiBAQCAtMzUzLDggKzM1Myw4IEBAIHN0YXRpYyB2b2lkIGlw
bWJfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gIH0KPiAgCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCBpcG1iX2lkW10gPSB7Cj4gLQl7ICJpcG1iLWRldiIg
fSwKPiAtCXt9Cj4gKwl7IC5uYW1lID0gImlwbWItZGV2IiB9LAo+ICsJeyB9Cj4gIH07Cj4gIE1P
RFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBpcG1iX2lkKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWlfaXBtYi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMK
PiBpbmRleCAyODgxODk1MmE3YTQuLjFmMWU1NzE4ZjA4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2NoYXIvaXBtaS9pcG1pX2lwbWIuYwo+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfaXBt
Yi5jCj4gQEAgLTU2Niw4ICs1NjYsOCBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBvZl9pcG1p
X2lwbWJfbWF0Y2gpOwo+ICAjZW5kaWYKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2Rl
dmljZV9pZCBpcG1pX2lwbWJfaWRbXSA9IHsKPiAtCXsgREVWSUNFX05BTUUgfSwKPiAtCXt9Cj4g
Kwl7IC5uYW1lID0gREVWSUNFX05BTUUgfSwKPiArCXsgfQo+ICB9Owo+ICBNT0RVTEVfREVWSUNF
X1RBQkxFKGkyYywgaXBtaV9pcG1iX2lkKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc3NpZi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKPiBpbmRl
eCBiNDk1MDBhMWJkMzYuLjMyNDYwYzM4NThmNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIv
aXBtaS9pcG1pX3NzaWYuYwo+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4g
QEAgLTIwNzQsNyArMjA3NCw3IEBAIHN0YXRpYyBpbnQgZG1pX2lwbWlfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiAgI2VuZGlmCj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0
IGkyY19kZXZpY2VfaWQgc3NpZl9pZFtdID0gewo+IC0JeyBERVZJQ0VfTkFNRSB9LAo+ICsJeyAu
bmFtZSA9IERFVklDRV9OQU1FIH0sCj4gIAl7IH0KPiAgfTsKPiAgTU9EVUxFX0RFVklDRV9UQUJM
RShpMmMsIHNzaWZfaWQpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2Jt
Yy5jIGIvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYwo+IGluZGV4IDFkZjBlOTI4NGFkOS4u
NjAzNjg5NzcyNWYzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMK
PiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCj4gQEAgLTg3NCw3ICs4NzQsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzc2lmX2JtY19tYXRjaFtdID0gewo+
ICBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBzc2lmX2JtY19tYXRjaCk7Cj4gIAo+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgc3NpZl9ibWNfaWRbXSA9IHsKPiAtCXsgREVWSUNF
X05BTUUgfSwKPiArCXsgLm5hbWUgPSBERVZJQ0VfTkFNRSB9LAo+ICAJeyB9Cj4gIH07Cj4gIE1P
RFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBzc2lmX2JtY19pZCk7Cj4gCj4gYmFzZS1jb21taXQ6IDI1
NGY0OTYzNGVlMTZhNzMxMTc0ZDJhZTM0YmM1MGJkNWY0NWU3MzEKPiAtLSAKPiAyLjQ3LjMKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==
