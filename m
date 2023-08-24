Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B16087868C3
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Aug 2023 09:42:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qZ4zG-0000kq-5y;
	Thu, 24 Aug 2023 07:42:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1qZ4zF-0000kk-9y
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 07:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhv4Bg1fdD4fcuHP4DlJnIZ9JdHOfbSov1NYQWp3Ek8=; b=KYMICBY3AkUfedpeXKuMgTt8L5
 ULZ+EXaaglQ4Ygs3rKGIYckEx3Wbwue7Wz6g1ONcqhoVXGa24jVE4ZQoyUuT1J0OuO9wLL+lzoInT
 p5x6q4Vi+zHM8FwG0B37ym9MR5rWHrXqlx6A1xGtXIT+I5N7niR6NsA+CzbU/sjWwfv4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dhv4Bg1fdD4fcuHP4DlJnIZ9JdHOfbSov1NYQWp3Ek8=; b=dnzFjRHI1KAXGLO5gii4ry+pcC
 KhsX9hCXqxUD/OTuhS8Vl1Yoe2Gk75GJV0weQd0C9UOwKAbuOZdcAMbpkDD2UkKFymCt13Wpj2oDq
 t9zy51UYrJt21DghFkj+ZfB8TZtx8JCB4tOUqBtpZVvIv9fKyS75+x5fF1D62OxEkJhM=;
Received: from mail-vs1-f47.google.com ([209.85.217.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qZ4zE-00DnjN-7d for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 07:42:38 +0000
Received: by mail-vs1-f47.google.com with SMTP id
 ada2fe7eead31-44d5696fad1so1374054137.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Aug 2023 00:42:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692862950; x=1693467750;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dhv4Bg1fdD4fcuHP4DlJnIZ9JdHOfbSov1NYQWp3Ek8=;
 b=EO9wHuAC1VDDPRCqFANJCO8TC6NGQsxHd04IKnXPbs8SsZp5lLP5oICIhwUnDgcnUj
 e6DaI3PdccK4hxlXsxiqfkddfX7WLZiyLe7lBaehaOIrO2p9l+u8q0OAFBhxiSNsY+de
 DSdUWvmCuFl9EDWi6yYZI5H7YuPmJht6k9eIKOcH7Icz/cdxxSNl4laA0ykZ/N/UpDFs
 M5Q17xJ0cr1Oc8XY6BLkIlLvWCQUiGocpdP61a8gw+JtMzkcAqv6Ga+/Sov/4P90xlNP
 m+jWbOzwqKtX22g4dU/hJla78Rw+ezqcPHMNTOg7CbUiCv2crV8hmK8kDT/v5w/F3PDY
 KRZQ==
X-Gm-Message-State: AOJu0YxqxrSgs764Tj0EkSsdQLqHIgphLpTy4XgkaxLd2+KQLZfu1A1I
 k+tgJJMmEJqbWDvqR4DfmVzYv0bUQHFvEg==
X-Google-Smtp-Source: AGHT+IH2DuUIF4vz8bh1AkvLeKPLXLFzybiY7AhCIzcPNXC6sevvyGBhf0EN9B4EusThfixMLcfC0g==
X-Received: by 2002:a67:f79a:0:b0:44d:62a2:a397 with SMTP id
 j26-20020a67f79a000000b0044d62a2a397mr4893337vso.28.1692862950023; 
 Thu, 24 Aug 2023 00:42:30 -0700 (PDT)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com.
 [209.85.221.173]) by smtp.gmail.com with ESMTPSA id
 z21-20020ab05bd5000000b0079570a440aesm2233137uae.9.2023.08.24.00.42.29
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Aug 2023 00:42:29 -0700 (PDT)
Received: by mail-vk1-f173.google.com with SMTP id
 71dfb90a1353d-48f856b04b6so1054366e0c.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Aug 2023 00:42:29 -0700 (PDT)
X-Received: by 2002:a25:ae92:0:b0:d3b:e659:5331 with SMTP id
 b18-20020a25ae92000000b00d3be6595331mr14472125ybj.58.1692862928507; Thu, 24
 Aug 2023 00:42:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230823183749.2609013-1-robh@kernel.org>
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 24 Aug 2023 09:41:56 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWSrpjUK4Fa9cBiRqsnhh2GxyXK5fCt8B-RmaDgEy6OeA@mail.gmail.com>
Message-ID: <CAMuHMdWSrpjUK4Fa9cBiRqsnhh2GxyXK5fCt8B-RmaDgEy6OeA@mail.gmail.com>
To: Rob Herring <robh@kernel.org>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Aug 23, 2023 at 8:38 PM Rob Herring <robh@kernel.org>
    wrote: > Cleanup bindings dropping the last remaining unneeded quotes. With
    this, > the check for this can be enabled in yamllint. > > S [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.217.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.217.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [geert.uytterhoeven[at]gmail.com]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1qZ4zE-00DnjN-7d
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Drop remaining
 unneeded quotes
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
Cc: linux-hwmon@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linux-mips@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 James Clark <james.clark@arm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-i3c@lists.infradead.org,
 Lars-Peter Clausen <lars@metafoo.de>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Guenter Roeck <linux@roeck-us.net>,
 Mike Leach <mike.leach@linaro.org>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-gpio@vger.kernel.org, M ark Brown <broonie@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBBdWcgMjMsIDIwMjMgYXQgODozOOKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+IENsZWFudXAgYmluZGluZ3MgZHJvcHBpbmcgdGhlIGxhc3QgcmVtYWlu
aW5nIHVubmVlZGVkIHF1b3Rlcy4gV2l0aCB0aGlzLAo+IHRoZSBjaGVjayBmb3IgdGhpcyBjYW4g
YmUgZW5hYmxlZCBpbiB5YW1sbGludC4KPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxy
b2JoQGtlcm5lbC5vcmc+Cgo+ICAuLi4vYmluZGluZ3Mvc29jL3JlbmVzYXMvcmVuZXNhcyxyemcy
bC1zeXNjLnlhbWwgICAgIHwgIDQgKystLQoKQWNrZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8
Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAg
ICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90
cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29u
YWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBo
YWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInBy
b2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5p
cG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
