Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 493995648F6
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84DJ-00070l-Ml; Sun, 03 Jul 2022 18:20:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <javierm@redhat.com>) id 1o6SGT-0000ns-S7
 for openipmi-developer@lists.sourceforge.net; Wed, 29 Jun 2022 07:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1h0smKgkaQYyMckjg1gEO+92UXCJgyf7f6YfzsCAFg4=; b=jyV2mYlaqU92cqtj/eWMxsfLgh
 PVlVNCCnTFtxcZGeZb/uiQUsjPnARSKGrglTEdEwzJuMaj44ZCRRTn2pgEFBthDqXKwYpDVP+6tkl
 WE0DYqqAUqnXUV4v83rsRVj7iCC7fIzDmGFIgBqz7kySdh/XyseNj9hsoiVCwdvAI+k8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1h0smKgkaQYyMckjg1gEO+92UXCJgyf7f6YfzsCAFg4=; b=B5Gcs3yvNTXj+pNH3zBJODMpHO
 4qKcegV/k0k/E+8bWzoPaOkvCcGXS34fS7Y0/fqAoeVtZvdKBebC3p0Y6nD5dqmu7A0J+FXnnMzZx
 0SAe72JPQkJay9eXQ0O/bjCPJCRSVWMFf5EJ3KAJUOvgcuPvuMyI07zWnL0jmFkf76lw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6SGF-000YYz-Jv
 for openipmi-developer@lists.sourceforge.net; Wed, 29 Jun 2022 07:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656488233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1h0smKgkaQYyMckjg1gEO+92UXCJgyf7f6YfzsCAFg4=;
 b=A9r6z16eLePDP7bGnj4DQvo7y3G6bSPDfVUon8h8UU1fWVxsHhqlS7X5ho2Kg8bsJ94eAB
 ZpiagtHmU1cR+Mbl+pQ9uTE8c3wDDfX5ZBou6CQVNZ5jJ68lAXx9uYydmYJ32oQ+BT7P8w
 R0bVtv950eOUgOiUhg0nh9TLSJUseeI=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-U_rYk3zdPmusghImLNXhiQ-1; Wed, 29 Jun 2022 03:37:12 -0400
X-MC-Unique: U_rYk3zdPmusghImLNXhiQ-1
Received: by mail-wr1-f69.google.com with SMTP id
 t13-20020adfe10d000000b0021bae3def1eso2120039wrz.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 29 Jun 2022 00:37:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=1h0smKgkaQYyMckjg1gEO+92UXCJgyf7f6YfzsCAFg4=;
 b=SrJFSmxPVyskrj/5ngUFS3pkhs3FzXaTi6hjMcBtf2JwO5GDLVNgFle5ohk09F7y4R
 0LwH7hjJypbWCvzSWQni11a0vwr/rDBssIUPcO1/EdB0sLvap0NiwakaYNz6f0LGO+xM
 cRk33fk4re26xYvQkBGQMIsDIBzR7nyOSTzi7twDqdKdws7gmrvucKRfahpSyg3APkSX
 9X/819tA/4HPaYV1vznrO3X2xp9w3T+XnxAh3N8sjzQfiwKY2cEVLNAfvHLwglkMD0IX
 Nj4s/osjobEUwV9vF+yRRcMc1UXeyVFDrQYrf3j2SnQt0d/bV/k0ORWI+l2xSdTGeQNL
 F5nw==
X-Gm-Message-State: AJIora96eDaUDFpOCJFuxRp/CPPUpQFtWBnF4dtpmlPanznPr0CXpAuv
 L4ObHhoq8tZ6Od7qoXarNdgj+zUZhN8DvmGfOWzZy9uL8lWLLliV2rv3adiabqyBer9Y+ipVtyx
 8hyDN/u1/s8+T6WpOtelpJWCYCncHt5OL5Mbjutmv
X-Received: by 2002:a05:6000:1448:b0:21b:b7db:c40b with SMTP id
 v8-20020a056000144800b0021bb7dbc40bmr1650278wrx.279.1656488231018; 
 Wed, 29 Jun 2022 00:37:11 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vfq7mqFRSJqFJPQOP6rs25Ch1nA7fBeueZwuaRaLaWENw0ay54yTOP4QHXmGLo1NEA4L9c5g==
X-Received: by 2002:a05:6000:1448:b0:21b:b7db:c40b with SMTP id
 v8-20020a056000144800b0021bb7dbc40bmr1650238wrx.279.1656488230741; 
 Wed, 29 Jun 2022 00:37:10 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 j10-20020a5d448a000000b0021b8c99860asm15832366wrq.115.2022.06.29.00.37.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jun 2022 00:37:10 -0700 (PDT)
Message-ID: <7654a74e-a410-a8a5-c228-d006dbbc200f@redhat.com>
Date: Wed, 29 Jun 2022 09:37:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Jeremy Kerr <jk@codeconstruct.com.au>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
 <60cc6796236f23c028a9ae76dbe00d1917df82a5.camel@codeconstruct.com.au>
 <20220629072304.qazmloqdi5h5kdre@pengutronix.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220629072304.qazmloqdi5h5kdre@pengutronix.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 6/29/22 09:23, Uwe Kleine-König wrote: > Hello, > > [I
    dropped nearly all individuals from the Cc: list because various > bounces
    reported to be unhappy about the long (logical) line.] > Yes, it also bounced
    for me when I tried to reply earlier today. 
 
 Content analysis details:   (-1.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o6SGF-000YYz-Jv
X-Mailman-Approved-At: Sun, 03 Jul 2022 18:20:54 +0000
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
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
Cc: linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 patches@opensource.cirrus.com, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-rtc@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-staging@lists.linux.dev, kasan-dev@googlegroups.com,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-pm@vger.kernel.org,
 acpi4asus-user@lists.sourceforge.net, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wolfram Sang <wsa@kernel.org>,
 linux-crypto@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 netdev@vger.kernel.org, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gNi8yOS8yMiAwOToyMywgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8sCj4gCj4g
W0kgZHJvcHBlZCBuZWFybHkgYWxsIGluZGl2aWR1YWxzIGZyb20gdGhlIENjOiBsaXN0IGJlY2F1
c2UgdmFyaW91cwo+IGJvdW5jZXMgcmVwb3J0ZWQgdG8gYmUgdW5oYXBweSBhYm91dCB0aGUgbG9u
ZyAobG9naWNhbCkgbGluZS5dCj4KClllcywgaXQgYWxzbyBib3VuY2VkIGZvciBtZSB3aGVuIEkg
dHJpZWQgdG8gcmVwbHkgZWFybGllciB0b2RheS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9zb2xvbW9uL3NzZDEzMHgtaTJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vc29sb21vbi9zc2Qx
MzB4LWkyYy5jCj4gaW5kZXggMWUwZmNlYzdiZTQ3Li5kZGZhMGJiNWQ5YzkgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3NvbG9tb24vc3NkMTMweC1pMmMuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9zb2xvbW9uL3NzZDEzMHgtaTJjLmMKPiBAQCAtMzksMTMgKzM5LDExIEBAIHN0YXRp
YyBpbnQgc3NkMTMweF9pMmNfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKPiAgCXJl
dHVybiAwOwo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IHNzZDEzMHhfaTJjX3JlbW92ZShzdHJ1Y3Qg
aTJjX2NsaWVudCAqY2xpZW50KQo+ICtzdGF0aWMgdm9pZCBzc2QxMzB4X2kyY19yZW1vdmUoc3Ry
dWN0IGkyY19jbGllbnQgKmNsaWVudCkKPiAgewo+ICAJc3RydWN0IHNzZDEzMHhfZGV2aWNlICpz
c2QxMzB4ID0gaTJjX2dldF9jbGllbnRkYXRhKGNsaWVudCk7Cj4gIAo+ICAJc3NkMTMweF9yZW1v
dmUoc3NkMTMweCk7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIHNz
ZDEzMHhfaTJjX3NodXRkb3duKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCgpSZXZpZXdlZC1i
eTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+IAotLSAKQmVz
dCByZWdhcmRzLAoKSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzCkxpbnV4IEVuZ2luZWVyaW5nClJl
ZCBIYXQKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
