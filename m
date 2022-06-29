Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8E8564902
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84DN-00074Y-BM; Sun, 03 Jul 2022 18:21:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <luzmaximilian@gmail.com>)
 id 1o6Ydt-0004bS-6R; Wed, 29 Jun 2022 14:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nzVAkjUIXnSmifmZO/KNuTW33GCGTCzsi9aX026XXeg=; b=bCpR36+fyJ0qx5VfRqR5t87eYu
 cudjpQInNTbalZfNyl3b8zeTpSVRqvp/8Uv/KgFL6qbAOu8sov9fdS5TaqbI7L38lZTM23+Cg2W74
 OmxucnR3pI3xyIS6IRzX8HHXtKmk5We6sVgMFU1F8Z0DIouyaiKPNGpAs8s21YNW3zWo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nzVAkjUIXnSmifmZO/KNuTW33GCGTCzsi9aX026XXeg=; b=OXUgE4BP1KHaJ7pY0gttlY5kbk
 /iE4xuqkzOjzh/8FK/GRuEIVYzZ33zLwSVXLQieaEKriej4sARESdKxQ9U+03/RvEh+1nMmPuVXlb
 kZgIed+a9kGl4Y4PKOSOZcohpNeA1NE9/FV+yUrhBX84mWoOnHbTgXNW4dk0/0dSlSPs=;
Received: from mail-ej1-f48.google.com ([209.85.218.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o6Ydo-001HZc-MK; Wed, 29 Jun 2022 14:26:09 +0000
Received: by mail-ej1-f48.google.com with SMTP id ge10so32957483ejb.7;
 Wed, 29 Jun 2022 07:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nzVAkjUIXnSmifmZO/KNuTW33GCGTCzsi9aX026XXeg=;
 b=S2dVib/eYmAFl827WdIoCLllzfbxALRjIjzfRRwuBWpdbVEMsjXdf1fQZ0QK1n2n0J
 7Rc0uKmDUlj06sv7gme85B+3fLmze+mOouy0tIsuBDVpy1nD4eEh9k2i1LyAyfo/z7Zj
 KDlk5RBwfb1T/0o1rVzuZORFiKZsCvSsNfve9fNt60vuT8XdzQWLTwkS/9FAhK69nmEs
 mEzSIHBFyIvznhb3ZYEmWznM5HxrpFTwi8PXn2kSF7LDJWEQQU2316sTZ03OvudAaN+G
 thYeRK11RnXT7zItby/QP43/O2E1Z4EfVZv3Nyn7dRrR7zoEuvKZKKrx+f9P5pfvx3Rg
 uLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nzVAkjUIXnSmifmZO/KNuTW33GCGTCzsi9aX026XXeg=;
 b=Mlg7TDIuGzP1H7jGNi1yiryQ4aaK7M5F1WU0vKvi7Bo34c0/ZIxOmh8KPtWLrkBNPE
 x4Dy5PHtqpge1mSd9/0iPFX4iC7/9Gawe52cMP7nWTHzCkEewSMPgTEIlM3HfGmLqYKx
 GvtbUbrj+FN51M4tLqJ7XWvNSa6kjBM5T5xt5TERhzbX//8tj9LpoVspmRBoeuvILmc3
 aYOCZL+2nJ6lBvK2U/tBv2buDlxx9dWeQk8ExNX9/GgUSuIUjYH+aFicjVLmP5wY/TQ+
 KFmW7uIDf0DiU+m9e9owvcI+YVV/I5z/OYzp1goEbs/EUmmISBbZXpvfWjXqDUJjHfSt
 pjgw==
X-Gm-Message-State: AJIora+IRXh+DaoDhxvPqArJ40/75eYQhLtFYbxRIjrvcuJVBjZFA/S6
 7ihwWVCkQuuvLFk1pxOlIqY=
X-Google-Smtp-Source: AGRyM1vLxTFMIxeh0MQDJmw094z51hmalDIKhKM+71jelG0gY6NpuuzQXDALY4ZT1iSuYjMs9++euw==
X-Received: by 2002:a17:906:58cf:b0:722:e4e1:c174 with SMTP id
 e15-20020a17090658cf00b00722e4e1c174mr3593366ejs.85.1656512758310; 
 Wed, 29 Jun 2022 07:25:58 -0700 (PDT)
Received: from [10.29.0.16] ([37.120.217.82]) by smtp.gmail.com with ESMTPSA id
 jy19-20020a170907763300b007263713cfe9sm7220580ejc.169.2022.06.29.07.25.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jun 2022 07:25:57 -0700 (PDT)
Message-ID: <80117936-6869-19b2-45a6-96a4562c6cd2@gmail.com>
Date: Wed, 29 Jun 2022 16:25:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Wolfram Sang <wsa@kernel.org>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
From: Maximilian Luz <luzmaximilian@gmail.com>
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 6/28/22 16:03, Uwe Kleine-König wrote: > From: Uwe Kleine-König
    > > The value returned by an i2c driver's remove function is mostly ignored.
    > (Only an error message is printed if the value is [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.218.48 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [luzmaximilian[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.218.48 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o6Ydo-001HZc-MK
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 netdev@vger.kernel.org, kasan-dev@googlegroups.com, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-rtc@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-omap@vger.kernel.org, Luka Perkov <luka.perkov@sartura.hr>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>, linux-pwm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Bastien Nocera <hadess@hadess.net>,
 linux-input@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, linux-usb@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Tu <shawnx.tu@intel.com>,
 linux-hwmon@vger.kernel.org, acpi4asus-user@lists.sourceforge.net,
 linux-serial@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Jiri Kosina <jikos@kernel.org>,
 linuxppc-dev@lists.ozlabs.org, Mark Gross <markgross@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, linux-gpio@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 platform-driver-x86@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Mark Brown <broonie@kernel.org>, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, patches@opensource.cirrus.com,
 linux-integrity@vger.kernel.org, =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gNi8yOC8yMiAxNjowMywgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gRnJvbTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KPiAKPiBUaGUgdmFsdWUgcmV0dXJu
ZWQgYnkgYW4gaTJjIGRyaXZlcidzIHJlbW92ZSBmdW5jdGlvbiBpcyBtb3N0bHkgaWdub3JlZC4K
PiAoT25seSBhbiBlcnJvciBtZXNzYWdlIGlzIHByaW50ZWQgaWYgdGhlIHZhbHVlIGlzIG5vbi16
ZXJvIHRoYXQgdGhlCj4gZXJyb3IgaXMgaWdub3JlZC4pCj4gCj4gU28gY2hhbmdlIHRoZSBwcm90
b3R5cGUgb2YgdGhlIHJlbW92ZSBmdW5jdGlvbiB0byByZXR1cm4gbm8gdmFsdWUuIFRoaXMKPiB3
YXkgZHJpdmVyIGF1dGhvcnMgYXJlIG5vdCB0ZW1wdGVkIHRvIGFzc3VtZSB0aGF0IHBhc3Npbmcg
YW4gZXJyb3IgdG8KPiB0aGUgdXBwZXIgbGF5ZXIgaXMgYSBnb29kIGlkZWEuIEFsbCBkcml2ZXJz
IGFyZSBhZGFwdGVkIGFjY29yZGluZ2x5Lgo+IFRoZXJlIGlzIG5vIGludGVuZGVkIGNoYW5nZSBv
ZiBiZWhhdmlvdXIsIGFsbCBjYWxsYmFja3Mgd2VyZSBwcmVwYXJlZCB0bwo+IHJldHVybiAwIGJl
Zm9yZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29l
bmlnQHBlbmd1dHJvbml4LmRlPgoKWy4uLl0KPiAgIGRyaXZlcnMvcGxhdGZvcm0vc3VyZmFjZS9z
dXJmYWNlM19wb3dlci5jICAgICAgICAgICAgICAgICB8IDQgKy0tLQoKWy4uLl0KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0vc3VyZmFjZS9zdXJmYWNlM19wb3dlci5jIGIvZHJpdmVy
cy9wbGF0Zm9ybS9zdXJmYWNlL3N1cmZhY2UzX3Bvd2VyLmMKPiBpbmRleCA0NDRlYzgxYmEwMmQu
LjNiMjBkZGRlYjgxNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3N1cmZhY2Uvc3Vy
ZmFjZTNfcG93ZXIuYwo+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0vc3VyZmFjZS9zdXJmYWNlM19w
b3dlci5jCj4gQEAgLTU1NCw3ICs1NTQsNyBAQCBzdGF0aWMgaW50IG1zaHcwMDExX3Byb2JlKHN0
cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gICAJcmV0dXJuIGVycm9yOwo+ICAgfQo+ICAgCj4g
LXN0YXRpYyBpbnQgbXNodzAwMTFfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4g
K3N0YXRpYyB2b2lkIG1zaHcwMDExX3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+
ICAgewo+ICAgCXN0cnVjdCBtc2h3MDAxMV9kYXRhICpjZGF0YSA9IGkyY19nZXRfY2xpZW50ZGF0
YShjbGllbnQpOwo+ICAgCj4gQEAgLTU2NCw4ICs1NjQsNiBAQCBzdGF0aWMgaW50IG1zaHcwMDEx
X3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICAgCQlrdGhyZWFkX3N0b3AoY2Rh
dGEtPnBvbGxfdGFzayk7Cj4gICAKPiAgIAlpMmNfdW5yZWdpc3Rlcl9kZXZpY2UoY2RhdGEtPmJh
dDApOwo+IC0KPiAtCXJldHVybiAwOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0
IGFjcGlfZGV2aWNlX2lkIG1zaHcwMDExX2FjcGlfbWF0Y2hbXSA9IHsKCkZvciB0aGUgcXVvdGVk
IGFib3ZlOgoKUmV2aWV3ZWQtYnk6IE1heGltaWxpYW4gTHV6IDxsdXptYXhpbWlsaWFuQGdtYWls
LmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpP
cGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
