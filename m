Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DHzF46V4mnP7gAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Apr 2026 22:18:22 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DCF41E792
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Apr 2026 22:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5kKayt2MV9wMd10pti+oiLUGiHkxQ62p9pLNPY1oupk=; b=A9Apwa2JlydIhJSeW6WM7TblIr
	RdyAYZLYFuG3p/E5XfX7Wi2xNHoQb/Qn/+XYlmtyvgPYHzdzcWHB+esuuP3FnMaOS/sEQs7DpDMLS
	fCZJm1KjknYMv/MPfFaEJoj64jyWt0GE+Da4aubGbBRomFxSpblnMl8P92SIhiGzduJM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wDpdh-0000eQ-OI;
	Fri, 17 Apr 2026 20:18:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wDlme-0007rW-NW
 for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 16:11:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K8d3/9PYuqP2Cf+uINzt8hhgShEc1l2/GsPnTmqM1Vg=; b=Rhs0Cm5+egtVNBpRW/BhLcN+DA
 ckG2buw+yuwJWZln8cmtL8vvwfPIUR4CUtuFEzGFVlvFDpE5PXxIGdNlo5DzWfWyaPztU9BDsEGfL
 WhKBx7iYATW0+UGIzysx6xmCs+5wYhQTd9PVbXJeEuWEEMqO/L6CnCdzEL/gpa377VFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K8d3/9PYuqP2Cf+uINzt8hhgShEc1l2/GsPnTmqM1Vg=; b=ikm+AvKcmqtZ83Hjla7o4/Jc5+
 da1vbGM+Nm/p0DW7EB1+aj0lAxWACXCCoyr7fJytdzIbq9/qZvjORxRdPTxO8/CUCF/c4fCumnOIY
 LAU1155j7sciLJrlj/GMNdJDVwT7jmv25xHZZBTRi82ijIRtNWt1NzZIAX7wo+ougf9o=;
Received: from mail-ej1-f52.google.com ([209.85.218.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wDlme-0005Jn-AR for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 16:11:08 +0000
Received: by mail-ej1-f52.google.com with SMTP id
 a640c23a62f3a-ba3115fe0d5so297431366b.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Apr 2026 09:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1776442262;
 x=1777047062; darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=K8d3/9PYuqP2Cf+uINzt8hhgShEc1l2/GsPnTmqM1Vg=;
 b=yrL85xsgq12sUSDjhLFol/3/j0n8lTTmHzmNroGROadPkgx9qOGOXgTaYaz4JQQ4QV
 B+Evwm7fq44BHEcZa4xoPhkmC4V5crxNq1cfOJ6wCMGKIjKMrEfrsNukefxCCvk0dPi3
 g8KdwNGf52m4n1pbdHmsEiccvgZinyLeX4pSQ/ZTaqubw80gDcgPbfbYGJ3lXzPBMnk+
 YMaSopQ7qbUG03KU8JoPA8lxDiLl7BOhh+4Bi5WzWObUC7yZfAKvgciNHT7d54ZUf7KK
 5i31C0QVDhGg/v+ysfWluAgu7/MTqmnukBisqgfNn5+ESl8PClIHNNF+aZZDF9Rg3gHO
 b1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776442262; x=1777047062;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=K8d3/9PYuqP2Cf+uINzt8hhgShEc1l2/GsPnTmqM1Vg=;
 b=QiSg8sI22WKdXFEA6QQ2elLzAd5K9haXzv9YGWN+rY48ipciTtY9hwXO9OzQC3USYU
 BRRX+OeOX6QLmtoRy4GaNYFrsSQqPTVFperjlqFcuAobmn0V7NBajHrzEmtWyyRw2Gto
 +WFPbCOnf9IDuXT3Dexz+LjxjSIq2qoL1R5YpfseBP2pPIIeOkq0l4ZOLzvDPBlVOLVr
 Vwb6xOUwnE+iNZMe/FpvD5C8LIiJCWhNclfTK1zayugRE2gLqOs27tRk7KOM9P8PDpUK
 56b+ViwgcNPkeNHrCI+paQf923sszR7nCGYeeB5JMI1EE5YDnXY776ixeD//v4qOZxmL
 CeWg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9eOzR1BKOGdmZfrbQj6sWce8O7qM3+VY9P+wXCS0ZVC3W72/7GdaEvJYDiVL1YyVYmT6RqY835LDykP/EsEeuepfQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxug7jllk8rpHqP42YgokE9pkt4GBtSpqK46+LYeGyExUw5BRfN
 QZPGhQDF8MyAupM5waoSXmoZEK84XmErxVI9EG8ruNaSsxKSPL5kMbyvy7JVwKxKfd3+dAzJNpU
 Dt4Mh1GI=
X-Gm-Gg: AeBDiev7O3ku6nM0QuQIYuzon1vvYwwz/tfT913I5f7pNlmDEfU1MZbJuVl2LuuUNAq
 eoWXHLPqb2SdOLQmJ7ggDoKPxZzYwfz2ZzfaqTMuaLgvbdSMGqyK0IGp0E3axnvQ18ZAD5XcEqH
 LnGnrYd8nxS7NKkpw45UpWz0YlNZhvB0UkBPjF2ONihKbRZ3aFCpIe/fIrtdZZinX1bdfpmqjo7
 ICc9Aj/jti8lpbPlafnPb3DPacn6XPQe6CxO4Q9bfvbAt0hAa7C5695PsBO5dNmYV4OXgeuc3P6
 Z+35gtd8cWxjhngw4xBqN97Kl0VWulzgRz8yBMGBUHunaet/8YOuXhl9+7MwLMXTkGAP9rM9Lmp
 y/pgh+LmSNdMibKUAg+oeUvp0CzgvzhMPIMurA1XwmeWxOkryMSdkAZI0/nBtqZcubuPDlQ1Kbv
 7kY6s/3qov6nbtk/MHhJ6oIYaMSR1j
X-Received: by 2002:a05:6000:15e8:b0:43f:e56a:636e with SMTP id
 ffacd0b85a97d-43fe56a649bmr2752002f8f.18.1776440473692; 
 Fri, 17 Apr 2026 08:41:13 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:d2::15:415])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43fe4e3a79esm6436594f8f.17.2026.04.17.08.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2026 08:41:11 -0700 (PDT)
Date: Fri, 17 Apr 2026 16:41:10 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aeJNOc0YgQ4GIyLK@matt-Precision-5490>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad-BtS5b3qiowqb7@mail.minyard.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 15, 2026 at 07:16:53AM -0500,
 Corey Minyard wrote:
 > > I've seen this before in several scenarios, including a system that put
 > IPMI in the ACPI tree and it sort of worked but there was n [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wDlme-0005Jn-AR
X-Mailman-Approved-At: Fri, 17 Apr 2026 20:18:09 +0000
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add timeout to unconditional
 wait in __get_device_id()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@cloudflare.com,
 Matt Fleming <mfleming@cloudflare.com>, linux-kernel@vger.kernel.org,
 Tony Camuso <tcamuso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[readmodwrite.com];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:linux-kernel@vger.kernel.org,m:tcamuso@redhat.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: F1DCF41E792
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBBcHIgMTUsIDIwMjYgYXQgMDc6MTY6NTNBTSAtMDUwMCwgQ29yZXkgTWlueWFyZCB3
cm90ZToKPiAKPiBJJ3ZlIHNlZW4gdGhpcyBiZWZvcmUgaW4gc2V2ZXJhbCBzY2VuYXJpb3MsIGlu
Y2x1ZGluZyBhIHN5c3RlbSB0aGF0IHB1dAo+IElQTUkgaW4gdGhlIEFDUEkgdHJlZSBhbmQgaXQg
c29ydCBvZiB3b3JrZWQgYnV0IHRoZXJlIHdhcyBubyBCTUMKPiBwcmVzZW50LiAgSSBoYWQgdG8g
ZGlzYWJsZSB0aGF0IHBhcnRpY3VsYXIgZGV2aWNlLgo+IAo+IFdoYXQgaGFyZHdhcmUgaXMgaW52
b2x2ZWQgaGVyZT8KIApJJ20gZmFpcmx5IHN1cmUgd2UndmUgc2VlbiB0aGlzIGFjcm9zcyBhIGJ1
bmNoIG9mIGRpZmZlcmVudCBCTUNzLCBzbwppdCdzIG5vdCBhIEJNQyBoYXJkd2FyZSB0aGluZy4g
QWxtb3N0IGNlcnRhaW5seSBhIGRyaXZlciBpc3N1ZS4KCj4gQ2FuIHlvdSBnaXZlIGEgbW9yZSBk
ZXRhaWxlZCBleGFtcGxlIG9mIHdoYXQncyBoYXBwZW5pbmcgaW4gdGhlCj4gbG93LWxldmVsIGhh
cmR3YXJlPyAgSWYgaXQncyBLQ1MgdGhlcmUncyBhIGRlYnVnIGZsYWcgaW4gdGhlCj4gZHJpdmVy
cy9jaGFyL2lwbWkvaXBtaV9rY3Nfc20uYyBmaWxlIHRoYXQgc2hvdWxkIGhlbHAuCgpZZXAsIGl0
J3MgS0NTLiBVbmZvcnR1bmF0ZWx5IEkgaGF2ZW4ndCBmb3VuZCBhIHdheSB0byByZXByb2R1Y2Ug
dGhpcwpyZWxpYWJseSB5ZXQuCgpMb29raW5nIGF0IGEgd2VkZ2VkIG1hY2hpbmUgKGNhdCAvc3lz
L2NsYXNzL2lwbWkvLi4uL2Zpcm13YXJlX3JldmlzaW9uKQp3aXRoIGRyZ24gSSBjYW4gc2VlIHRo
YXQgdGhlcmUncyA5OSw4NDYgbWVzc2FnZXMgc2F0IG9uIGludGYtPnhtaXRfbXNncwphbmQgdGhl
IEtDUyBTTSBpcyBpZGxlIChpdCdzIHJlc3BvbmRpbmcgdG8gaW50ZXJuYWwgdHJhZmZpYyBsaWtl
IEdldApHbG9iYWwgRW5hYmxlcyBhbmQgR2V0IE1zZyBGbGFncykuIFNvIGl0IGxvb2tzIGxpa2Ug
Y29tcGxldGlvbnMgYXJlCmdldHRpbmcgZHJvcHBlZC4KCldlJ3JlIHJ1bm5pbmcgYSA2LjE4LjE4
IGtlcm5lbCB3aGljaCBpbmNsdWRlcyBjMDhlYzU1NjE3Y2IgKCJpcG1pOiBGaXgKdXNlLWFmdGVy
LWZyZWUgYW5kIGxpc3QgY29ycnVwdGlvbiBvbiBzZW5kZXIgZXJyb3IiKSwgc28gaXQncyBub3Qg
dGhhdC4KCkhlcmUncyBhIGR1bXAgb2Ygc29tZSBvZiB0aGUgZGF0YSBzdHJ1Y3R1cmVzLgoKaW50
ZiAgICAgICAgICAgICAgICAgICAgICAgPSAweGZmZmY5ZDJmNGE1YTAwMDAKaW50Zi0+Y3Vycl9t
c2cgICAgICAgICAgICAgPSAweGZmZmY5ZDM0ZjIxYTljMDAgICAgCmludGYtPnhtaXRfbXNncy5u
ZXh0ICAgICAgID0gMHhmZmZmOWQzMGMyOGUzYzgwIAppbnRmLT53YWl0aW5nX3Jjdl9tc2dzICAg
ICA9IGVtcHR5CmludGYtPm1haW50ZW5hbmNlX21vZGUgICAgID0gMAppbnRmLT5tYWludGVuYW5j
ZV9tb2RlX3N0YXRlID0gMAppbnRmLT5pbl9zaHV0ZG93biAgICAgICAgICA9IGZhbHNlCmludGYt
PnNlcV90YWJsZSAgICAgICAgICAgID0gMC82NCBzbG90cyB1c2VkCmludGYtPnNtaV93b3JrLnBl
bmRpbmcgICAgID0gMAoKVGhlIHN0dWNrIG1lc3NhZ2UgaXRzZWxmIOKAlCBpbnRmLT5jdXJyX21z
ZzoKCm1zZyBAIDB4ZmZmZjlkMzRmMjFhOWMwMAogIC5kYXRhICAgICAgPSB7IDB4MTgsIDB4MDEg
fSAgICAgICAgICAgIyBOZXRGbiAweDA2IChBcHApLCBjbWQgMHgwMSA9IEdldCBEZXZpY2UgSUQK
ICAuZGF0YV9zaXplID0gMgogIC5yc3Bfc2l6ZSAgPSAzOCAgICAgICAgICAgICAgICAgICAgICAg
CiAgLnJzcFswLi43XSA9IDJjIDAxIDAwIDAwIC4uLiAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgCiAgLmRvbmUgICAgICA9IGZyZWVfc21pX21zZyAgICAgICAgICAgICAKICAudXNl
cl9kYXRhID0gTlVMTAogIC5tc2dpZCAgICAgPSAoaW50ZXJuYWwgR0RJIHBvbGwpCiAgLnR5cGUg
ICAgICA9IElQTUlfU01JX01TR19UWVBFX05PUk1BTAoKCnNtaV9pbmZvICAgICAgICAgICAgICAg
ICAgID0gMHhmZmZmOWQyZjRhMDEwMDAwCnNtaV9pbmZvLT5zaV9zdGF0ZSAgICAgICAgID0gU0lf
Tk9STUFMICgwKQpzbWlfaW5mby0+Y3Vycl9tc2cgICAgICAgICA9IDB4ZmZmZjlkMmY0OGM3Yjgw
MCAKc21pX2luZm8tPndhaXRpbmdfbXNnICAgICAgPSBOVUxMCnNtaV9pbmZvLT5pbnRlcnJ1cHRf
ZGlzYWJsZWQgPSBmYWxzZQpzbWlfaW5mby0+c3VwcG9ydHNfZXZlbnRfbXNnX2J1ZmYgPSB0cnVl
CnNtaV9pbmZvLT5pby5pcnEgICAgICAgICAgID0gMCAgICAgICAgICAgICAgICAgICAgIApzbWlf
aW5mby0+cnVuX3RvX2NvbXBsZXRpb24gPSBmYWxzZQpzbWlfaW5mby0+aW5fbWFpbnRlbmFuY2Vf
bW9kZSA9IDAKCkxldCBtZSBrbm93IGlmIHlvdSB3YW50IGFueSBvdGhlciBpbmZvLiBJJ2xsIHRy
eSB0byB0cmFjZSB0aGlzIGFuZApjYXRjaCBpdCByZXByb2R1Y2luZy4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
