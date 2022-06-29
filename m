Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 264BE5648FF
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84DM-00073n-W4; Sun, 03 Jul 2022 18:21:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <javierm@redhat.com>) id 1o6SlC-0006xf-HK
 for openipmi-developer@lists.sourceforge.net; Wed, 29 Jun 2022 08:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7hQQnP6ElkRz6EikrOqVkat5RAwQAYxqOhDbZ9zjeug=; b=KkcjlJJbTzVCF+h2Up384MIs3E
 +q6NDbHZ3drZut2GF2dv5wVQSFvP4EhcmeCx6pOdIPdFXyKJsvyxwvUlbme7Bgr2Kp0yK1KFp/Lzf
 /00PUDveH3lduNsghaqiY6sClvbLqwEjbt1gybBPwrC0T8EJBEO2bZIcrrX9y/0lIB7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7hQQnP6ElkRz6EikrOqVkat5RAwQAYxqOhDbZ9zjeug=; b=Pt25NdP3osvxl/oChqnOgXSjkq
 V4k8jy0b3XD2P6ozzOkKTU/3XSm7z5Um5Fwtc9BOobzy98Vkl5Dj9OcWJcbKF5Pcwab4lALTxg21L
 FdhHeUfE0FnNth1erhtz/7HfrAi9/88fGizuj4usmGksJIKdeJzgkAPgJQPpB0Lc70ck=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6Sl9-0004j9-Bp
 for openipmi-developer@lists.sourceforge.net; Wed, 29 Jun 2022 08:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656490149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7hQQnP6ElkRz6EikrOqVkat5RAwQAYxqOhDbZ9zjeug=;
 b=Oxo53p/fRlsSMA3GK80B0wxaV+6dXETfzm7WdLOVZ6ix/DWgAC4nx09DRv2BO5T3ohmv20
 WFpRdwRzwIbXgLzlxSwbe0a0TGiN1FLVjwVL2nrpk7uL5xzPTqbhjom+lLFue6AafELb3x
 Mdn4CcLpWouX/V4cSNrOhKmZTH845mo=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-132-1Nxn2872M3OdffP_zgbC7A-1; Wed, 29 Jun 2022 04:09:05 -0400
X-MC-Unique: 1Nxn2872M3OdffP_zgbC7A-1
Received: by mail-wr1-f70.google.com with SMTP id
 az28-20020adfe19c000000b0021bc8df3721so1473814wrb.7
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 29 Jun 2022 01:09:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7hQQnP6ElkRz6EikrOqVkat5RAwQAYxqOhDbZ9zjeug=;
 b=t7zWBfxU58wedxd46V8PMP7vh3yDBAxmcwKE42LRqmpC9+sTabW5B3t6m5z19YVhdd
 CNz2q0lvm2fsJmNOxFhmJ6XigJL8/gU1/+JRVGejQUHdBRETD2R1AXrQ0VuFvXkvE2qn
 37BRBGnoK6gL7sPFzg1tyHoBUQSOUzrbN9WfxH6LBKRASKZAa2IsvJPA6pVibDKgZ9a4
 vdhavR1q8bBSrme2aKiBpvcvljCMrWiKBjECMhSPpFHG4TxSrd+aZ4APzPl+sbIoRenC
 97hNERrEl//TlZL20KZ28u4QM7C66K67aJbK9oJyt7+uImTIOxjmZ6BNKToMj0OEaUBD
 0fPg==
X-Gm-Message-State: AJIora9ETvUH1g32VsS2uPTl9Qf/23rfy3RjTnExhwJVbD6kdSdqKUXF
 4+NODEIpSyOvE5QcW1Bow/u/pQO1p1H1ysYrYKIQ9A3YL2TpeXDURcLMRzNOxuDgCr9fDlSCGm+
 f6jlnv40LNWdK5i0vp0DK7ilNiwr/G+HyoaLxNe8b
X-Received: by 2002:a05:600c:2246:b0:3a0:4d14:e9d5 with SMTP id
 a6-20020a05600c224600b003a04d14e9d5mr2201655wmm.70.1656490144654; 
 Wed, 29 Jun 2022 01:09:04 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1usFW/96xeCeX9gWa5EcwEsowhB540yEb4Gaanj9433iMcJH3n1uDXhdEWzSLPQicn1TmuJ9w==
X-Received: by 2002:a05:600c:2246:b0:3a0:4d14:e9d5 with SMTP id
 a6-20020a05600c224600b003a04d14e9d5mr2201616wmm.70.1656490144372; 
 Wed, 29 Jun 2022 01:09:04 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 p2-20020a05600c358200b003942a244f47sm2507134wmq.32.2022.06.29.01.09.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jun 2022 01:09:03 -0700 (PDT)
Message-ID: <a5a3e2ca-030a-4838-296e-50dbb6d87330@redhat.com>
Date: Wed, 29 Jun 2022 10:09:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Jeremy Kerr <jk@codeconstruct.com.au>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
 <60cc6796236f23c028a9ae76dbe00d1917df82a5.camel@codeconstruct.com.au>
 <20220629072304.qazmloqdi5h5kdre@pengutronix.de>
 <5517f329-b6ba-efbd-ccab-3d5caa658b80@csgroup.eu>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <5517f329-b6ba-efbd-ccab-3d5caa658b80@csgroup.eu>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 6/29/22 09:55, Christophe Leroy wrote: > > > Le 29/06/2022
    à 09:23, Uwe Kleine-König a écrit : >> Hello, >> >> [I dropped nearly
    all individuals from the Cc: list because various >> bounces rep [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: ozlabs.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o6Sl9-0004j9-Bp
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "chrome-platform@lists.linux.dev" <chrome-platform@lists.linux.dev>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "acpi4asus-user@lists.sourceforge.net" <acpi4asus-user@lists.sourceforge.net>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 Support Opensource <support.opensource@diasemi.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 Wolfram Sang <wsa@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-integrity@vger.kernel.org" <linux-integrity@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gNi8yOS8yMiAwOTo1NSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBMZSAyOS8w
Ni8yMDIyIMOgIDA5OjIzLCBVd2UgS2xlaW5lLUvDtm5pZyBhIMOpY3JpdMKgOgo+PiBIZWxsbywK
Pj4KPj4gW0kgZHJvcHBlZCBuZWFybHkgYWxsIGluZGl2aWR1YWxzIGZyb20gdGhlIENjOiBsaXN0
IGJlY2F1c2UgdmFyaW91cwo+PiBib3VuY2VzIHJlcG9ydGVkIHRvIGJlIHVuaGFwcHkgYWJvdXQg
dGhlIGxvbmcgKGxvZ2ljYWwpIGxpbmUuXQo+IAo+IEdvb2QgaWRlYSwgZXZlbiBwYXRjaHdvcmsg
bWFkZSBhIG1lc3Mgb2YgaXQsIHNlZSAKPiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3By
b2plY3QvbGludXhwcGMtZGV2L3BhdGNoLzIwMjIwNjI4MTQwMzEzLjc0OTg0LTctdS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlLwo+IAoKRllJLCBmb3IgcGF0Y2hlcyBsaWtlIHRoZXNlIHdo
YXQgSSB1c3VhbGx5IHVzZSBpczoKCi4vc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLW5vZ2l0
LWZhbGxiYWNrIC0tbm8tbSAtLW5vLXIKCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGlu
ZXogQ2FuaWxsYXMKTGludXggRW5naW5lZXJpbmcKUmVkIEhhdAoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
