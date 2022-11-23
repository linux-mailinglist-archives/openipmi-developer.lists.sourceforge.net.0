Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A0C6366E9
	for <lists+openipmi-developer@lfdr.de>; Wed, 23 Nov 2022 18:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oxtTj-0007SM-Vb;
	Wed, 23 Nov 2022 17:24:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <broonie@kernel.org>) id 1oxtTj-0007SF-8B
 for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 17:24:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hOsbuzPLeHywyr5nL6gIQ1RSbsg0Lc94qjpfus/VkVs=; b=H2M9XysJd+jbkHjmyOaSOIoJLb
 7B3f2soRNbIqFOql0OzAb2Ul6qAU3M2Naz0hzSPux3iMHtyGdeOEIpA5JvW8ZOiNoknQAA8raxB0Y
 djSCVa/I+u15oiWobNCals32A3jXCiFHKwUxWCJW2KFySoTGnblzHomfV6164ffrYbPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-Id:
 Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hOsbuzPLeHywyr5nL6gIQ1RSbsg0Lc94qjpfus/VkVs=; b=Q2x5kysF5iuWyd5t0BLQLDIz2l
 NA21912D9aQDTTyvnwV6apKbWhYXeLH/qYKUjgRZpvVGI1xYiJZiYp+FM8aoa+1MgfKmZwdvPN9SW
 9q1xFrMc9rkAnM7ARGDnSdn+pQrx/g3FGGyzXSLS/7R9LurQYg9/TnERsiQ5dDDsMyfA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxtTf-00GZMP-0T for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 17:24:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 83C1461E01;
 Wed, 23 Nov 2022 17:23:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06998C433C1;
 Wed, 23 Nov 2022 17:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669224236;
 bh=NklP56tySe3Xv444ZHt52vRJGyzaYy1R0Ex9JoaAzOM=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=cM7LkUwn/UGY9APeo61IFLdLFugI/mycScX1L27zLnBFWztWOvsY2/pXAQvU8BtqA
 zN2grVWU907Puoa1962eNoEzm7M0GyfMXDTyo0m/fYESjcYYfLenMyR420GN0LPle7
 fHre3CZnC438ac14FaQ0ftW3eoi7y+NqR03dNnG17mNGguUXELDqAXtYw+kabasJh/
 GdE3AFFOilgHHG2SfRFJ7XFkovjxBFA4x69koAbNo4eANtlUFZ7DlagmzghcWyagzN
 hB+OrPBoifu3z+M9f10yfPgcQGlZSqkBCHUx9fpHFf/LyumxpmD68OdmhxG3k3+QWy
 NRxBKM7JX5qXQ==
From: Mark Brown <broonie@kernel.org>
To: Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Uwe Kleine-König <uwe@kleine-koenig.org>,
 Angel Iglesias <ang.iglesiasg@gmail.com>, Grant Likely <grant.likely@linaro.org>
In-Reply-To: <20221118224540.619276-1-uwe@kleine-koenig.org>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
Message-Id: <166922422872.540277.7243893319002961181.b4-ty@kernel.org>
Date: Wed, 23 Nov 2022 17:23:48 +0000
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fc921
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 18 Nov 2022 23:35:34 +0100, Uwe Kleine-König wrote:
    > since commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new() > call-back
    type") from 2016 there is a "temporary" alternative probe > [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxtTf-00GZMP-0T
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
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
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
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-crypto@vger.kernel.org,
 kernel@pengutronix.de, netdev@vger.kernel.org, linux-integrity@vger.kernel.org,
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
IGludG8geW91ciB0cmVlIHRvIGdldCBpdDoKPiAKPiBbLi4uXQoKQXBwbGllZCB0bwoKICAgaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYnJvb25pZS9yZWd1
bGF0b3IuZ2l0IGZvci1uZXh0CgpUaGFua3MhCgpbNTM5LzYwNl0gcmVndWxhdG9yOiBhZDUzOTg6
IENvbnZlcnQgdG8gaTJjJ3MgLnByb2JlX25ldygpCiAgICAgICAgICBjb21taXQ6IDdmNjllZGJh
OTYwYmJkY2JjODI5ZDhkMDk5NWIxMTE3Y2UyOWU4YjEKWzU0NC82MDZdIHJlZ3VsYXRvcjogbHA4
NzJ4OiBDb252ZXJ0IHRvIGkyYydzIC5wcm9iZV9uZXcoKQogICAgICAgICAgY29tbWl0OiA4N2Zl
Y2NiMzQ3YjI1ZjVkYzZmZjQ1MTEyM2I4MzJjOWFkNWRkZGZlCls1NDYvNjA2XSByZWd1bGF0b3I6
IGx0YzM1ODk6IENvbnZlcnQgdG8gaTJjJ3MgLnByb2JlX25ldygpCiAgICAgICAgICBjb21taXQ6
IDc4YzhmNmNkYjUxZDQ3MTkyOGQ0ODFlZDNiMmM4MmRiYzExMGExZWQKWzU0OS82MDZdIHJlZ3Vs
YXRvcjogbWF4ODY2MDogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3KCkKICAgICAgICAgIGNv
bW1pdDogZGJmMzFkYWM3MDMwMDkxNzQyMjZiYjg3YjM5MTRiZDA5MjA0MDMyNwpbNTUxLzYwNl0g
cmVndWxhdG9yOiBtYXg4OTczLXJlZ3VsYXRvcjogQ29udmVydCB0byBpMmMncyAucHJvYmVfbmV3
KCkKICAgICAgICAgIGNvbW1pdDogNGU4NWU1ZDY0ZjY2YWM1ZTRiMDI4NmVlNGI2ZjhlOGNlMTA0
NGQ0MgpbNTU3LzYwNl0gcmVndWxhdG9yOiB0cHM2MjM2MC1yZWd1bGF0b3I6IENvbnZlcnQgdG8g
aTJjJ3MgLnByb2JlX25ldygpCiAgICAgICAgICBjb21taXQ6IDE4ODA0MTYwMjc3ZWMyYWI5OTIz
NzMzODVmODZjNmFmMjMyMmIyOGIKWzU1OS82MDZdIHJlZ3VsYXRvcjogdHBzNjUwMjMtcmVndWxh
dG9yOiBDb252ZXJ0IHRvIGkyYydzIC5wcm9iZV9uZXcoKQogICAgICAgICAgY29tbWl0OiAzYjVi
MDdkZGU5OThmNmFkZTc0MzNhOGRiMDE5Y2Y4MTZjN2UzNWFmCgpBbGwgYmVpbmcgd2VsbCB0aGlz
IG1lYW5zIHRoYXQgaXQgd2lsbCBiZSBpbnRlZ3JhdGVkIGludG8gdGhlIGxpbnV4LW5leHQKdHJl
ZSAodXN1YWxseSBzb21ldGltZSBpbiB0aGUgbmV4dCAyNCBob3VycykgYW5kIHNlbnQgdG8gTGlu
dXMgZHVyaW5nCnRoZSBuZXh0IG1lcmdlIHdpbmRvdyAob3Igc29vbmVyIGlmIGl0IGlzIGEgYnVn
IGZpeCksIGhvd2V2ZXIgaWYKcHJvYmxlbXMgYXJlIGRpc2NvdmVyZWQgdGhlbiB0aGUgcGF0Y2gg
bWF5IGJlIGRyb3BwZWQgb3IgcmV2ZXJ0ZWQuCgpZb3UgbWF5IGdldCBmdXJ0aGVyIGUtbWFpbHMg
cmVzdWx0aW5nIGZyb20gYXV0b21hdGVkIG9yIG1hbnVhbCB0ZXN0aW5nCmFuZCByZXZpZXcgb2Yg
dGhlIHRyZWUsIHBsZWFzZSBlbmdhZ2Ugd2l0aCBwZW9wbGUgcmVwb3J0aW5nIHByb2JsZW1zIGFu
ZApzZW5kIGZvbGxvd3VwIHBhdGNoZXMgYWRkcmVzc2luZyBhbnkgaXNzdWVzIHRoYXQgYXJlIHJl
cG9ydGVkIGlmIG5lZWRlZC4KCklmIGFueSB1cGRhdGVzIGFyZSByZXF1aXJlZCBvciB5b3UgYXJl
IHN1Ym1pdHRpbmcgZnVydGhlciBjaGFuZ2VzIHRoZXkKc2hvdWxkIGJlIHNlbnQgYXMgaW5jcmVt
ZW50YWwgdXBkYXRlcyBhZ2FpbnN0IGN1cnJlbnQgZ2l0LCBleGlzdGluZwpwYXRjaGVzIHdpbGwg
bm90IGJlIHJlcGxhY2VkLgoKUGxlYXNlIGFkZCBhbnkgcmVsZXZhbnQgbGlzdHMgYW5kIG1haW50
YWluZXJzIHRvIHRoZSBDQ3Mgd2hlbiByZXBseWluZwp0byB0aGlzIG1haWwuCgpUaGFua3MsCk1h
cmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVu
aXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
b3BlbmlwbWktZGV2ZWxvcGVyCg==
