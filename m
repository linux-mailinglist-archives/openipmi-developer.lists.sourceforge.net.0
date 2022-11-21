Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E56A06322FA
	for <lists+openipmi-developer@lfdr.de>; Mon, 21 Nov 2022 14:02:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ox6RJ-0003rV-3K;
	Mon, 21 Nov 2022 13:02:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ox6RH-0003rP-TU
 for openipmi-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 13:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nRECzEBKuXfpVjBgQjOUCRx/oDhSHr+NnW7a6vUNh4w=; b=JWDRffIbHw3aICTlM1kuTqOR54
 +3+jY8vRgJyq0ec4WFH/AKmxAxb7dKMDFeGhH32aS7ieYOxgCwv6tkL9rsrDgKrDrVfmTlOVH1pek
 7oY1MzTPVcJX+gsvY0nGbXCCQ1SVIc+qmhNjx8JaZ4mF4evLjNxu+cW4ewQpPMH/sHRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nRECzEBKuXfpVjBgQjOUCRx/oDhSHr+NnW7a6vUNh4w=; b=f+jzYzjQmzpVJhVVTd7ptqiF6y
 GdbBmN/PP07ULS0OByPmmCAE6yllhEUUz4a5KzlpwdzlFCqGtGpNg8+aLdzPtZdzxT30IxYauuedE
 2Tc/+r9XtcuYDgoQyv0PC6I6Nbg32IA20fW+UdlTqRB2+gJdn6+lItUsPUANDJpD5GOo=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ox6RC-006i8q-6y for openipmi-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 13:02:19 +0000
Received: by mail-qk1-f181.google.com with SMTP id z17so7882931qki.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 21 Nov 2022 05:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=nRECzEBKuXfpVjBgQjOUCRx/oDhSHr+NnW7a6vUNh4w=;
 b=jHZfjgI3LB/tpnHxoVUiPi3bLaC4J67KIkO2UIBQJuq07MjfCX3vN6/f8+gwZTDQDS
 e8ZFFw8xBQE2kHGzy6w9jF9C4yM3GfPfFMLlT2NX3kwMZMtuoQUMrXUtAH1dHVrJkXNe
 Ku2HUOZNYOK7fFqp2eZuj5qsbvMlZr1G5UnSZdJJ4TQGr7OlA+gNzyTCw2v6VOi08mMe
 Lk1mT7CDdu9QKDZvNXYAMNhV8rH0D8tOQwYM77GbL4dVZr+4tYf8V3GnN9tNIttw4xkg
 G/xR2zEW56oOHNuO/o5w5Q7/buHTExV8Yw6YowjCPgXVoAykTD9pMvMjnTaO/AM+mYtA
 QJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nRECzEBKuXfpVjBgQjOUCRx/oDhSHr+NnW7a6vUNh4w=;
 b=ov3dYouMWDZrYqZxIyxoIghj1PuLR08STL4yWWNV9nH1+gv4pcqqVBqP2cz87P7uh7
 WMtrrLBd/xHZF1lygK7komEcvniZHUx20QzO5fnfB5WIvio91Ba8ifMHIpz/aeWW+05v
 TAmhPUdYAT+Zcpg8W3SBKTyK2BtAp+a4TOTVjAUKetnNHEkfYATPQfzpFG+XyW40+YeP
 cqzttcA/PO568ykGTW3yOZYNXf7uPxeKKhQG0qT6/xAjWV6HQJBoatDLjD8f/JTC8+bJ
 7RIQbstBLbipd6baX3J/zHhsBq8GfPxKlOJfECi6DisB1uZQj9WEnlwiWl+WbaITtvkH
 y9BA==
X-Gm-Message-State: ANoB5pkn9tUONJ3E5RlLUS0RFG2deSGxtVcpdXegPvR0XJdR+U5GKz8v
 hestEoRlZc/XQqM4/KgS5A==
X-Google-Smtp-Source: AA0mqf7HcNiuiMJu1iFhQyn5OQFAglqjdW633GaNRgAaiFNsxAyr3w7yTpq0cBPDW94knKf1PaC3Qw==
X-Received: by 2002:ae9:e605:0:b0:6fa:2522:9c56 with SMTP id
 z5-20020ae9e605000000b006fa25229c56mr2273316qkf.22.1669035727404; 
 Mon, 21 Nov 2022 05:02:07 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 h18-20020a05620a401200b006fa2b1c3c1esm8174419qko.58.2022.11.21.05.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Nov 2022 05:02:06 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f635:bca3:695:bf43])
 by serve.minyard.net (Postfix) with ESMTPSA id 7B2C11800BC;
 Mon, 21 Nov 2022 13:02:05 +0000 (UTC)
Date: Mon, 21 Nov 2022 07:02:04 -0600
From: Corey Minyard <minyard@acm.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Message-ID: <Y3t2zHgeMlTRGE0t@minyard.net>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
 <20221118224540.619276-606-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118224540.619276-606-uwe@kleine-koenig.org>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Nov 18, 2022 at 11:45:39PM +0100, Uwe Kleine-König
    wrote: > From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de> > > The
    probe function doesn't make use of the i2c_device_id * parameter s [...] 
 
 Content analysis details:   (0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.181 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1ox6RC-006i8q-6y
Subject: Re: [Openipmi-developer] [PATCH 605/606] ipmi: ssif_bmc: Convert to
 i2c's .probe_new()
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
Reply-To: minyard@acm.org
Cc: linux-kernel@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
 Angel Iglesias <ang.iglesiasg@gmail.com>, linux-i2c@vger.kernel.org,
 kernel@pengutronix.de,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Grant Likely <grant.likely@linaro.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCBOb3YgMTgsIDIwMjIgYXQgMTE6NDU6MzlQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gRnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5n
dXRyb25peC5kZT4KPiAKPiBUaGUgcHJvYmUgZnVuY3Rpb24gZG9lc24ndCBtYWtlIHVzZSBvZiB0
aGUgaTJjX2RldmljZV9pZCAqIHBhcmFtZXRlciBzbyBpdAo+IGNhbiBiZSB0cml2aWFsbHkgY29u
dmVydGVkLgoKVGhhbmtzLCBxdWV1ZWQgZm9yIG5leHQgcmVsZWFzZS4KCi1jb3JleQoKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJv
bml4LmRlPgo+IC0tLQo+ICBkcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jIHwgNCArKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgYi9kcml2ZXJzL2NoYXIvaXBt
aS9zc2lmX2JtYy5jCj4gaW5kZXggMmQ4MDY5Mzg2Mzk4Li5jYWVlODQ4MjYxZTkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYwo+ICsrKyBiL2RyaXZlcnMvY2hhci9p
cG1pL3NzaWZfYm1jLmMKPiBAQCAtNzk3LDcgKzc5Nyw3IEBAIHN0YXRpYyBpbnQgc3NpZl9ibWNf
Y2Ioc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwgZW51bSBpMmNfc2xhdmVfZXZlbnQgZXZlbnQs
IHU4Cj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IHNzaWZfYm1jX3Byb2Jl
KHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkICpp
ZCkKPiArc3RhdGljIGludCBzc2lmX2JtY19wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50
KQo+ICB7Cj4gIAlzdHJ1Y3Qgc3NpZl9ibWNfY3R4ICpzc2lmX2JtYzsKPiAgCWludCByZXQ7Cj4g
QEAgLTg2MCw3ICs4NjAsNyBAQCBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgc3NpZl9ibWNfZHJp
dmVyID0gewo+ICAJCS5uYW1lICAgICAgICAgICA9IERFVklDRV9OQU1FLAo+ICAJCS5vZl9tYXRj
aF90YWJsZSA9IHNzaWZfYm1jX21hdGNoLAo+ICAJfSwKPiAtCS5wcm9iZSAgICAgICAgICA9IHNz
aWZfYm1jX3Byb2JlLAo+ICsJLnByb2JlX25ldyAgICAgID0gc3NpZl9ibWNfcHJvYmUsCj4gIAku
cmVtb3ZlICAgICAgICAgPSBzc2lmX2JtY19yZW1vdmUsCj4gIAkuaWRfdGFibGUgICAgICAgPSBz
c2lmX2JtY19pZCwKPiAgfTsKPiAtLSAKPiAyLjM4LjEKPiAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
