Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A44A764A229
	for <lists+openipmi-developer@lfdr.de>; Mon, 12 Dec 2022 14:50:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1p4jCE-0002vg-3T;
	Mon, 12 Dec 2022 13:50:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robert.foss@linaro.org>) id 1p3cVE-0007oT-Fo
 for openipmi-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 12:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CCwzWMPdgO9Dcc0FuYTNg8nT6gaYsC62geOPdirkTlQ=; b=OhuyU+vbqWIMxJFvW9op9WqxH/
 dC8RwAylNyQcxL0SfQ/jhZIX6hYE6WkHNXF9VyqhcSeusrNQ5jxjmd9vw/Ulz2jBGgF2IrO5ufKGi
 NwHogBpPOyfyPysa+Bpg4kpB++4GHhBHfkBXjya0e952hGFOmUVpCe6SZ1Qn9Qpk6AZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CCwzWMPdgO9Dcc0FuYTNg8nT6gaYsC62geOPdirkTlQ=; b=dnw4in1NYqLB+omIIESZMxRZ4C
 G7H2HZVXnRgG6B10Zfxc9p26RRgANLehEqsN3TgT2CdekhVCyr79S+82+nS8jMlv9W5nVxyX5YtIg
 oAIzl+fSq/Gbz9ZVB0Gcx212k3V3Ew1V0EVqLJV4meJcbs4hLc6peNYhfQkJK1SrUSC8=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p3cVA-00066D-C9 for openipmi-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 12:29:20 +0000
Received: by mail-lf1-f49.google.com with SMTP id p8so6759266lfu.11
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Dec 2022 04:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CCwzWMPdgO9Dcc0FuYTNg8nT6gaYsC62geOPdirkTlQ=;
 b=blV6eki9f/dE3yt8k9vQjmYbdmKqtjXhWL8aRDi0+PTy9DZ7PoASn6Hb4YDawt6/Pq
 TOTWkNyJ1bQ0LXeAOKmZsgrohPEAxg4I9Vxq8Iql4MCfOpzd9bk59Kg8A1l2aCabzc1i
 Pwb8zUD5pTagBDWz9wlqw8be8RXHOe4ntLhBEh7HXgPppKgizTPX68btz3fJ69iSfJef
 zAFAyKFjvCY4s0mBfuw+77i/sj6ivMcyXsKkk5Q+7miuQY1uqqYMcxvazgbad3gQhSeN
 osKwSC1CYREx2mikz7Rsbjiro/V/gVq1uBZVJYbtUMGcexuFEHFb/xJK0jJPCO1YVyoF
 GpZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CCwzWMPdgO9Dcc0FuYTNg8nT6gaYsC62geOPdirkTlQ=;
 b=lCPlO6GXrZyg5l4MdFrbWiSp2pDLya4mYD40K6Zt+QOYDDKCGJn9OGMjvq+5/GuVhR
 KTpKsNB7aYI9iIIENDy40q4mED3lhaAnjmdWLAdz/0zFCgPjNgkbxOb/Dx2wio2hxXMx
 DwG7ArCHc2dhQJ2g9nCBwfRSOa4aXH12YOIrulqYfMc77UXT98unw6Lq5wRfMP43h7cI
 2GmBJ6658tk88b62aZ7L/+yYhLREwko+Tdun5cIqa3Hj5a9ENdrYseJ2H9wdV1DnMOlZ
 CnLLApUey5mTfzDH4fl6vg2x0txUeg3kUPD84r+6ewXSrnGACpc+gmY5XLqgI+PRZwFM
 o5vQ==
X-Gm-Message-State: ANoB5pk1TRL4akiBsXjrlNTfzq6FXapfvHoOkEaHL0Pe77D2M17sysZR
 vLJqTHTpovioQRPwfZqSffExK8N9xmUcoFGG
X-Google-Smtp-Source: AA0mqf7P1uuFrcKToZQL1Qs7OSMRUELHntqUphTx86r+y9eGx8OMntNtg5Twtz4wxSVo6DNFFYUZgg==
X-Received: by 2002:a17:906:4907:b0:7c0:d4fa:3151 with SMTP id
 b7-20020a170906490700b007c0d4fa3151mr4765674ejq.17.1670587236522; 
 Fri, 09 Dec 2022 04:00:36 -0800 (PST)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
 by smtp.gmail.com with ESMTPSA id
 o23-20020a170906861700b007c0a7286c0asm489597ejx.58.2022.12.09.04.00.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Dec 2022 04:00:35 -0800 (PST)
From: Robert Foss <robert.foss@linaro.org>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Wolfram Sang <wsa@kernel.org>, Angel Iglesias <ang.iglesiasg@gmail.com>,
 Grant Likely <grant.likely@linaro.org>, Lee Jones <lee.jones@linaro.org>
Date: Fri,  9 Dec 2022 13:00:14 +0100
Message-Id: <167058708567.1651663.18170722235132459286.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221118224540.619276-1-uwe@kleine-koenig.org>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 18 Nov 2022 23:35:34 +0100, Uwe Kleine-König wrote:
    > since commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new() > call-back
    type") from 2016 there is a "temporary" alternative probe > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: freedesktop.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.49 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1p3cVA-00066D-C9
X-Mailman-Approved-At: Mon, 12 Dec 2022 13:50:17 +0000
Subject: Re: [Openipmi-developer] (subset) [PATCH 000/606] i2c: Complete
 conversion to i2c_probe_new
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
Cc: linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, alsa-devel@alsa-project.org,
 platform-driver-x86@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 linux-staging@lists.linux.dev,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-actions@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Purism Kernel Team <kernel@puri.sm>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Robert Foss <robert.foss@linaro.org>,
 linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-crypto@vger.kernel.org, kernel@pengutronix.de,
 patches@opensource.cirrus.com, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCAxOCBOb3YgMjAyMiAyMzozNTozNCArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gc2luY2UgY29tbWl0IGI4YTFhNGNkNWE5OCAoImkyYzogUHJvdmlkZSBhIHRlbXBvcmFy
eSAucHJvYmVfbmV3KCkKPiBjYWxsLWJhY2sgdHlwZSIpIGZyb20gMjAxNiB0aGVyZSBpcyBhICJ0
ZW1wb3JhcnkiIGFsdGVybmF0aXZlIHByb2JlCj4gY2FsbGJhY2sgZm9yIGkyYyBkcml2ZXJzLgo+
IAo+IFRoaXMgc2VyaWVzIGNvbXBsZXRlcyBhbGwgZHJpdmVycyB0byB0aGlzIG5ldyBjYWxsYmFj
ayAodW5sZXNzIEkgbWlzc2VkCj4gc29tZXRoaW5nKS4gSXQncyBiYXNlZCBvbiBjdXJyZW50IG5l
eHQvbWFzdGVyLgo+IEEgcGFydCBvZiB0aGUgcGF0Y2hlcyBkZXBlbmQgb24gY29tbWl0IDY2MjIz
MzczMWQ2NiAoImkyYzogY29yZToKPiBJbnRyb2R1Y2UgaTJjX2NsaWVudF9nZXRfZGV2aWNlX2lk
IGhlbHBlciBmdW5jdGlvbiIpLCB0aGVyZSBpcyBhIGJyYW5jaCB0aGF0Cj4geW91IGNhbiBwdWxs
IGludG8geW91ciB0cmVlIHRvIGdldCBpdDoKPiAKPiBbLi4uXQoKQXBwbGllZCBhbGwgcGF0Y2hl
cyB0aGF0IGJ1aWxkLgoKUGF0Y2hlcyBleGNsdWRlZDoKIC0gcHM4NjIyCiAtIHRpLXNuNjVkc2k4
MwogLSBhZHY3NTExCgpSZXBvOiBodHRwczovL2NnaXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0t
bWlzYy8KCgpbMDE0LzYwNl0gZHJtL2JyaWRnZTogYWR2NzUxMTogQ29udmVydCB0byBpMmMncyAu
cHJvYmVfbmV3KCkKICAgICAgICAgIChubyBjb21taXQgaW5mbykKWzAxNS82MDZdIGRybS9icmlk
Z2UvYW5hbG9naXgvYW54NjM0NTogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkKICAgICAg
ICAgIChubyBjb21taXQgaW5mbykKWzAxNi82MDZdIGRybS9icmlkZ2UvYW5hbG9naXgvYW54Nzh4
eDogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkKICAgICAgICAgIChubyBjb21taXQgaW5m
bykKWzAxNy82MDZdIGRybS9icmlkZ2U6IGFueDc2MjU6IENvbnZlcnQgdG8gaTJjJ3MgLnByb2Jl
X25ldygpCiAgICAgICAgICAobm8gY29tbWl0IGluZm8pClswMTgvNjA2XSBkcm0vYnJpZGdlOiBp
Y242MjExOiBDb252ZXJ0IHRvIGkyYydzIC5wcm9iZV9uZXcoKQogICAgICAgICAgKG5vIGNvbW1p
dCBpbmZvKQpbMDE5LzYwNl0gZHJtL2JyaWRnZTogY2hyb250ZWwtY2g3MDMzOiBDb252ZXJ0IHRv
IGkyYydzIC5wcm9iZV9uZXcoKQogICAgICAgICAgY29tbWl0OiA4ZGM2ZGUyODBmMDFjMGY3Yjhk
NDA0MzU3MzZmM2M5NzUzNjhhZDcwClswMjAvNjA2XSBkcm0vYnJpZGdlOiBpdDY1MDU6IENvbnZl
cnQgdG8gaTJjJ3MgLnByb2JlX25ldygpCiAgICAgICAgICAobm8gY29tbWl0IGluZm8pClswMjEv
NjA2XSBkcm0vYnJpZGdlOiBpdDY2MTIxOiBDb252ZXJ0IHRvIGkyYydzIC5wcm9iZV9uZXcoKQog
ICAgICAgICAgKG5vIGNvbW1pdCBpbmZvKQpbMDIyLzYwNl0gZHJtL2JyaWRnZTogbHQ4OTEyYjog
Q29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkKICAgICAgICAgIChubyBjb21taXQgaW5mbykK
WzAyMy82MDZdIGRybS9icmlkZ2U6IGx0OTIxMTogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3
KCkKICAgICAgICAgIChubyBjb21taXQgaW5mbykKWzAyNC82MDZdIGRybS9icmlkZ2U6IGx0OTYx
MTogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkKICAgICAgICAgIChubyBjb21taXQgaW5m
bykKWzAyNS82MDZdIGRybS9icmlkZ2U6IGx0OTYxMXV4YzogQ29udmVydCB0byBpMmMncyAucHJv
YmVfbmV3KCkKICAgICAgICAgIChubyBjb21taXQgaW5mbykKWzAyNi82MDZdIGRybS9icmlkZ2U6
IG1lZ2FjaGlwczogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkKICAgICAgICAgIChubyBj
b21taXQgaW5mbykKWzAyNy82MDZdIGRybS9icmlkZ2U6IG54cC1wdG4zNDYwOiBDb252ZXJ0IHRv
IGkyYydzIC5wcm9iZV9uZXcoKQogICAgICAgICAgKG5vIGNvbW1pdCBpbmZvKQpbMDI4LzYwNl0g
ZHJtL2JyaWRnZTogcGFyYWRlLXBzODYyMjogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkK
ICAgICAgICAgIChubyBjb21taXQgaW5mbykKWzAyOS82MDZdIGRybS9icmlkZ2U6IHNpaTkwMng6
IENvbnZlcnQgdG8gaTJjJ3MgLnByb2JlX25ldygpCiAgICAgICAgICAobm8gY29tbWl0IGluZm8p
ClswMzAvNjA2XSBkcm0vYnJpZGdlOiBzaWk5MjM0OiBDb252ZXJ0IHRvIGkyYydzIC5wcm9iZV9u
ZXcoKQogICAgICAgICAgKG5vIGNvbW1pdCBpbmZvKQpbMDMxLzYwNl0gZHJtL2JyaWRnZTogc2lp
ODYyMDogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkKICAgICAgICAgIChubyBjb21taXQg
aW5mbykKWzAzMi82MDZdIGRybS9icmlkZ2U6IHRjMzU4NzY3OiBDb252ZXJ0IHRvIGkyYydzIC5w
cm9iZV9uZXcoKQogICAgICAgICAgKG5vIGNvbW1pdCBpbmZvKQpbMDMzLzYwNl0gZHJtL2JyaWRn
ZTogdGMzNTg3Njg6IENvbnZlcnQgdG8gaTJjJ3MgLnByb2JlX25ldygpCiAgICAgICAgICAobm8g
Y29tbWl0IGluZm8pClswMzQvNjA2XSBkcm0vYnJpZGdlL3RjMzU4Nzc1OiBDb252ZXJ0IHRvIGky
YydzIC5wcm9iZV9uZXcoKQogICAgICAgICAgKG5vIGNvbW1pdCBpbmZvKQpbMDM1LzYwNl0gZHJt
L2JyaWRnZTogdGktc242NWRzaTgzOiBDb252ZXJ0IHRvIGkyYydzIC5wcm9iZV9uZXcoKQogICAg
ICAgICAgKG5vIGNvbW1pdCBpbmZvKQpbMDM3LzYwNl0gZHJtL2JyaWRnZTogdGZwNDEwOiBDb252
ZXJ0IHRvIGkyYydzIC5wcm9iZV9uZXcoKQogICAgICAgICAgKG5vIGNvbW1pdCBpbmZvKQoKCgpy
b2IKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Bl
bmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L29wZW5pcG1pLWRldmVsb3Blcgo=
