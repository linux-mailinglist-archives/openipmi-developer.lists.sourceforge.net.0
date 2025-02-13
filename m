Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D83DA33EFB
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Feb 2025 13:21:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tiYDd-00087U-2d;
	Thu, 13 Feb 2025 12:21:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linus.walleij@linaro.org>) id 1tiYDc-00087O-5o
 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Feb 2025 12:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Z56Y83f+ojrrsd3GpgSgBFA2lIExVUESQWAv2+ulCQ=; b=ZTJ/TGPfFM5c2AchYuTe/qUf3N
 dx4IimLPWFVyxll8N9EEblKwvfzjnUfjdfvgaxrLtaf1SncevY8F/0IBpp5NsY8XlccTFPA20a03A
 XSs+S6fSpO1ziXmdjcvknOaszQqi2OK7G8MT/yT/oKjCmic/bT6nesxUbwy2YgyWNr98=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Z56Y83f+ojrrsd3GpgSgBFA2lIExVUESQWAv2+ulCQ=; b=SPkXlNYVVWHmhprrGqtuoJN6EY
 OijDPwI+7MVxYXBTHfdQuz53+9oZXJf93+FxezJjfpGEO0W4VLpC2KHVm+GA2ogy4Z+NGSGT4u66Q
 ses54dbNGEvKcUllqwgigHNzjSaDFXb3x5y4f7hnKQa1CZLm/Tn+jOLKslBftMrSiFus=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tiYDb-0003u1-G1 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Feb 2025 12:21:24 +0000
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-543d8badc30so882605e87.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 Feb 2025 04:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1739449272; x=1740054072; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7Z56Y83f+ojrrsd3GpgSgBFA2lIExVUESQWAv2+ulCQ=;
 b=KR+ZRdeJrHjg62cykOPtZJayRUhkmlQgkWlWBgC7MY9FUZzMS/bu6UzH9Asuko7fA5
 t3bxP1yxwIO9Kfim7L9W2QaI3+GQomsrSSD6U+6ttacsNQdXOG6HiHiZQzmI3Fj5nek5
 OTI5vLNxid4hqsd16hR1DFdaxWLFxjNyE9YSPYVue4izGeaIaA8LOZJwtel9Ie7QbEgJ
 ydTYS5jJYCbKvlX80Sx3vWL07wSz+jLn8bfl3y2j9uiTpDjIYUEkbjZYqQyMrQWsphaY
 /TWaJts0ZJ61z42T2DLl9WSwjODX2GzYzLp2ykHKMwKfYWBR+AOOj19OxNyxhJyncPjl
 sKrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739449272; x=1740054072;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7Z56Y83f+ojrrsd3GpgSgBFA2lIExVUESQWAv2+ulCQ=;
 b=RPiXk3iSXCPvsLVEP8ynXe7H6PH3NdSa6XoXZzcEHv2t4XJyPqH4PVPJ1lZSbE4JCI
 dx7tPATrl7gWMXCDkA/yfP6kUHh973JwzttYOZ6hDtL5U+A3Pk8FWHNaGxCl5wfl/jd0
 vxpVRQ7FpJtIamE+av2ggAUsuB5C74GXSGM4lIqS+o12M5vch4YRubcBcnedq8mrbtqr
 yuiEQY+Hn7PW7hkihKx6y/hR/iaH/LzxE/ZaViEPxUE6bhIDWscpHn4Hk0Ju8A+X2FC+
 DjuOkmL/ahbBBjwiNgddvJI6jg1tI7U5t3aAzQu82D06BB6M/2QL5gOKvVFDJ9+flp1Q
 jYFQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUtLyKXxWkurNZ0b3jdFZyUgylNneXNhKXC+2XAyi41eZCL1qbXG86XoJhqZ31fLYnBHe1aAcoDJFGn8FjFeF6VAKo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxqPn+8YoqS9Q0ulNqBfdIUNl9hQ1h/1a0b1ry7j3hCIo1S83n7
 1Fsi63ZBRT5k5ZV+18FOs88LVu+liaU3xR3YPoaBKolTHx8+sTQ7PSokEsduukJ+7vtNd9mjWhZ
 2f1B4uCOYRAAK0uRUWh6Bfy9j820IC1YkfMplGqcRIxc6Hcmg
X-Gm-Gg: ASbGncvAkdqIAAN0ixBsv1YAmQqyQbfveGjymY0TcOx5yUPQIjJyWE10073Y325tQBw
 z/1M1FwTs5NCfjLFu8ckoljKAGl1oBwe4HqtxTMDPC7Em2BbY9KDW0lRyGJURSSVQ5iTbyS94
X-Google-Smtp-Source: AGHT+IGtr+B7QUg7ovhczdnIrY54CJufjoazE+Gk4x6uF30Uby+ckGzBKyKIc+SyfPUrY3/AAaJl/Zu1tehVGQNXynI=
X-Received: by 2002:a05:6512:3447:b0:545:b40:6566 with SMTP id
 2adb3069b0e04-5451ddeb857mr591146e87.53.1739446217812; Thu, 13 Feb 2025
 03:30:17 -0800 (PST)
MIME-Version: 1.0
References: <20250203144422.269948-1-ninad@linux.ibm.com>
 <20250203144422.269948-3-ninad@linux.ibm.com>
In-Reply-To: <20250203144422.269948-3-ninad@linux.ibm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 13 Feb 2025 12:30:06 +0100
X-Gm-Features: AWEUYZklvT3HDVtZsVqTrXdrtQL7QNdhFrM_NmeZwuKBhmtHfAH-J4BH0prCplk
Message-ID: <CACRpkdZW9aNbrQk-zz4G0_W-HXrxgpWi_QzuLvActcWkh+U4Tw@mail.gmail.com>
To: Ninad Palsule <ninad@linux.ibm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Feb 3, 2025 at 3:44 PM Ninad Palsule <ninad@linux.ibm.com>
    wrote: > Allow parsing GPIO controller children nodes with GPIO hogs. > >
    Reviewed-by: Rob Herring (Arm) <robh@kernel.org> > Signed-off-by: Ninad Palsule
    <ninad@linux.ibm.com> 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.47 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.47 listed in sa-accredit.habeas.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.47 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1tiYDb-0003u1-G1
Subject: Re: [Openipmi-developer] [PATCH v7 2/9] dt-bindings: gpio:
 ast2400-gpio: Add hogs parsing
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
Cc: robh@kernel.org, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 brgl@bgdev.pl, eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBGZWIgMywgMjAyNSBhdCAzOjQ04oCvUE0gTmluYWQgUGFsc3VsZSA8bmluYWRAbGlu
dXguaWJtLmNvbT4gd3JvdGU6Cgo+IEFsbG93IHBhcnNpbmcgR1BJTyBjb250cm9sbGVyIGNoaWxk
cmVuIG5vZGVzIHdpdGggR1BJTyBob2dzLgo+Cj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIChB
cm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogTmluYWQgUGFsc3VsZSA8bmlu
YWRAbGludXguaWJtLmNvbT4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
