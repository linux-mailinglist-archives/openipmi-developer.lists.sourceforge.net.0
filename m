Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F8A97363F
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Sep 2024 13:30:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1snz4p-000420-UT;
	Tue, 10 Sep 2024 11:30:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1snz4o-00041u-Ie
 for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Sep 2024 11:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qUjD1qXlr7sDXF6Pz2mpEF9dvaXJD/VmLWCG9uZrJWA=; b=XdSksm+Kgcuyn/8pWr2mt+P2wd
 YgiQ+JIXI9P9FYbqpmYemAP+/sxBDbMf4TuZetJMDhqLqV/N+Cij7Ci2mePFNnAoLXa6AB8n1DAU4
 Nb49wIoWvEN5GC76LmqJ+ZXUbeoOi6oCNZG8sLKbnCVkTgFnp6ryK5UOyosCzMdQ0r1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qUjD1qXlr7sDXF6Pz2mpEF9dvaXJD/VmLWCG9uZrJWA=; b=PxTOTPuHZUG10H70Sf9buDT9WK
 6cvEhqBPnSvuN5LJLXqFk0vbczVBppqduPcRSys7QhcR3IueVnJ+B0nvM3PZZKupQ0IXlCPemfwed
 1XiPpsSlrJp4aQHxvzBDen2u/EAaWghe+sLRW48yPjOOItuefGDy0kxU2QI2O/ofrN9U=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1snz4o-0000LY-76 for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Sep 2024 11:30:31 +0000
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-5365a9574b6so5987361e87.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 10 Sep 2024 04:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1725967823; x=1726572623;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qUjD1qXlr7sDXF6Pz2mpEF9dvaXJD/VmLWCG9uZrJWA=;
 b=2KDyFvRgLLmEb4ZtawBgXlY8ANTy3RtUs5tzZYQFC9WC+GsrkghnDDgwycBAFTqZWi
 yl1jSwH4LVB9ih1LAoEUTjj7MykKSeTqXFiHSbAdlwmgaKodeFly0mBQYWH5YlMjUcFy
 AYs0jrPUtn9f0wHvDMihr6XhEl/fY3HT95fqjQoDlmEefsQj21aAwcgvWx0O1psPm54J
 jGkDSR+hWSBLMx7seQCkLaycJMShnCwZCDNzfhLIHhCo3jNplz9N6m1zbbq7lnOoQxuB
 vFEC3UdZpMhxT9DPdB/DlJSY81y23fzmMeNlEXQqeUKLhOw6L2FIrOqKn4MnD5+gfHDa
 4xyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725967823; x=1726572623;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qUjD1qXlr7sDXF6Pz2mpEF9dvaXJD/VmLWCG9uZrJWA=;
 b=nGDaaGNuVAU948At+R+7793PpiIn06kY/noBndHQiruHb8ytNk4NBEGahxTG3mIzN1
 CTMyRSwSwDEglloHydvjNL66fFnilTPq+f3pHk2La+sRWcS0Qmma0jtLKQ7+vaUE021N
 yOSxBeWjzA9Ep9NNMJjEEXmlMFRKbpCUtlMc47Bel3Az/laX3wg/Vygj/e1ot1wWYap6
 /cw2DrfCZulzbu0UwIUb5USjNwJBNP79CXrLQuQWZqznlA+LysF41TkcHkcGM4djiN19
 oYlp96b/vXysoJgQN4AIgLFZCfAMpFKKZqw9H60UGcicMUhdw7b9elRcu00MatDpml+s
 Lmdg==
X-Gm-Message-State: AOJu0YzSR/aOS75b+VcCAWPLQQCKJBnBl/heAs/ZYHWFNjbFYeilhO6r
 g2VLqXKAjbqXIinuhWwhtR9T5fc3FU8eFU+BWUu8h+waIzH7yc6GgvyMnDWJabSvh+GQJ20nGRO
 T1fuKr8uIm0mj3vgWe3b9LwaEW3pFv3z1n/1cEQ==
X-Google-Smtp-Source: AGHT+IHrlni+UNeiultZRq3v9U0+1z0gggaQueGwXZzkBD3HHF8mRaNy0AyLPtkFaiR/t3CDGpdPiVEjlEkJArOyyQc=
X-Received: by 2002:a05:6512:3d89:b0:52e:933f:f1fa with SMTP id
 2adb3069b0e04-53658818d02mr9921240e87.61.1725967822511; Tue, 10 Sep 2024
 04:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240816065458.117986-1-iivanov@suse.de>
 <ZsU9SRlQgzQn8bDs@mail.minyard.net>
 <20240910102531.grjtn2rdmagcgphb@localhost.localdomain>
In-Reply-To: <20240910102531.grjtn2rdmagcgphb@localhost.localdomain>
From: Corey Minyard <corey@minyard.net>
Date: Tue, 10 Sep 2024 06:30:11 -0500
Message-ID: <CAB9gMfqnpu9hpS8U=umGFV6k+KSoG+Luw80KL10_Qdqo3mLU8g@mail.gmail.com>
To: "Ivan T. Ivanov" <iivanov@suse.de>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 10, 2024 at 5:19 AM Ivan T. Ivanov <iivanov@suse.de>
    wrote: > > Hi Corey, > > On 08-20 20:05, Corey Minyard wrote: > > > > If
   an IPMI SSIF device is probed and there is something there, [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.49 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1snz4o-0000LY-76
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Improve detecting
 during probing
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBTZXAgMTAsIDIwMjQgYXQgNToxOeKAr0FNIEl2YW4gVC4gSXZhbm92IDxpaXZhbm92
QHN1c2UuZGU+IHdyb3RlOgo+Cj4gSGkgQ29yZXksCj4KPiBPbiAwOC0yMCAyMDowNSwgQ29yZXkg
TWlueWFyZCB3cm90ZToKPiA+Cj4gPiBJZiBhbiBJUE1JIFNTSUYgZGV2aWNlIGlzIHByb2JlZCBh
bmQgdGhlcmUgaXMgc29tZXRoaW5nIHRoZXJlLCBidXQKPiA+IHByb2JhYmx5IG5vdCBhbiBhY3R1
YWwgQk1DLCB0aGUgY29kZSB3b3VsZCBqdXN0IGlzc3VlIGEgbG90IG9mIGVycm9ycwo+ID4gYmVm
b3JlIGl0IGZhaWxlZC4gIFdlIGtpbmQgb2YgbmVlZCB0aGVzZSBlcnJvcnMgdG8gaGVscCB3aXRo
IGNlcnRhaW4KPiA+IGlzc3VlcywgYW5kIHNvbWUgb2YgdGhlIGZhaWx1cmUgcmVwb3J0cyBhcmUg
bm9uLWZhdGFsLgo+ID4KPiA+IEhvd2V2ZXIsIGEgZ2V0IGRldmljZSBpZCBjb21tYW5kIHNob3Vs
ZCBhbHdheSB3b3JrLiAgSWYgdGhhdCBmYWlscywKPiA+IG5vdGhpbmcgZWxzZSBpcyBnb2luZyB0
byB3b3JrIGFuZCBpdCdzIGEgcHJldHR5IGdvb2QgaW5kaWNhdGlvbiB0aGF0Cj4gPiB0aGVyZSdz
IG5vIHZhbGlkIEJNQyB0aGVyZS4gIFNvIGlzc3VlIGFuZCBjaGVjayB0aGF0IGNvbW1hbmQgYW5k
IGJhaWwKPiA+IGlmIGl0IGZhaWxzLgo+ID4KPiA+IFJlcG9ydGVkLWJ5OiBJdmFuIFQuIEl2YW5v
diA8aWl2YW5vdkBzdXNlLmRlPgo+ID4gU2lnbmVkLW9mZi1ieTogQ29yZXkgTWlueWFyZCA8Y29y
ZXlAbWlueWFyZC5uZXQ+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYu
YyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBEbyB5b3UgcGxhbiB0byBtZXJnZSB0aGlz
IGZpeD8KClllcywgaXQncyBxdWV1ZWQgZm9yIHRoZSBuZXh0IHJlbGVhc2Ugd2luZG93LiAgSSBz
aG91bGQgaGF2ZSByZXNwb25kZWQKd2l0aCB0aGF0LgoKLWNvcmV5Cgo+Cj4gUmVnYXJkcywKPiBJ
dmFuCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpP
cGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
