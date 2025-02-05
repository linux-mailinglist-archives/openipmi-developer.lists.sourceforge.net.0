Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEB9A28B39
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 Feb 2025 14:08:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tff94-0007LM-6H;
	Wed, 05 Feb 2025 13:08:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brgl@bgdev.pl>) id 1tfc6c-0003MZ-6s
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 09:54:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+es5DswhUHJuqnAtb0R/kgWj5lIvrRgBlmdAByRuO1k=; b=Mzfwj7ePGzft4Hhe+NhdCrlE5K
 i5n4TEgRRb7BiAHBy6O9IE9NIZRPGzEwPK2R02pXXx9gnoEpVlI6D1q8SQ9JB1M/rsDRuxtyTjxAN
 tUSFa3KwyTOzjt9ilatfGPlNFSGUJulY3muzOYjAl+k5OwDUxJ5LGG9LVPkj1Qs8MPJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+es5DswhUHJuqnAtb0R/kgWj5lIvrRgBlmdAByRuO1k=; b=dptIpWY/x61sh9kd1AK2KwC9JX
 m/NyysxhMMlRW+duHvwsH29C1mvfRMaQjmpbLbSrsBQf2+u1IrRT2MNOVCFAK7Ypj6DUWf674qVd+
 xOqTjoYnquLELuNwk85JjhtNaRLcvQqRg4xXo1n0nezH0f1OzAJ30rNEyy6UXov5k57I=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tfc6b-000133-AO for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 09:54:02 +0000
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-540215984f0so7313043e87.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 05 Feb 2025 01:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738749235; x=1739354035;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+es5DswhUHJuqnAtb0R/kgWj5lIvrRgBlmdAByRuO1k=;
 b=C1IUDSrJwOsqfvf2Ruut3TZI+PvXg4653/TDKAZwnPtBPJ+FJpOUvuVeoDvqb+ct5n
 dX0VGv+2N2ob+w27m3UDyoE28IQHc8b38ysH/0JyZfndTYeJa6Emp9dYAa/h9K4cl2lQ
 twNPIzmAUq8yqlSR1+LLRgALyrMPA+IGx+paw+Dxfd9qNoGVUowSHSYwkaxVsbQfRBhj
 1biX7v6tqy/Ma7Mvyf48GlJFCWqkp/C/No2k3gwKVWxq24wVIyyYTqqDib7o+7L95ys+
 Sn/n1ozJMkuh2Y4Uo655qWX5f3G3K2cFnrY97VUv7+UEyGeAkYa1MhET5VmtSvzg6d7O
 lE1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738749235; x=1739354035;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+es5DswhUHJuqnAtb0R/kgWj5lIvrRgBlmdAByRuO1k=;
 b=jwmFC+TMcrk6HSww5DP049Efe5l4nWDRocGZYI1HUmLYAjHDl/gDgORDwKLaYgTpQh
 s9ovURZ/t4CbFTU6NCHWrE7Ex2S+MclAw6Bl26xhH3h4Dfq5aTlsieB66dyNAbiUVq7G
 iUYR+f3U8Mce9YHGbCxpJMH54feCIh20KU8vJBGPHMSzIIYiNaSQYU1JsrQRRN5dTzcP
 DeyLCbrh9VXYf4st9KxyUYFjBzKadDFPE7daI7skBs23ee7i1N5XYI8UoYzMXsxwvjGm
 pLrDP4DVBgKYesFlcVeW2AFdnVvPAZ+E5P3Ja9kr1x0oOAyAcEMaBoC+vb9102E1qwNm
 APVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCa1rKKgVxtAlj752ZtoqcrVBB3Sn2iN7Vy1oGD7PPUpBUR4BN9xnyBxXEcx+FxEtmlGB5sygH8ArAcE4mJLCAfCQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwvlTaSXJCU4BmLbk99aze/tSRSl1VIrvrRIk8tmtZcK7OpGqVS
 iW5YOlBPAH2xyHrpZ8gQYQyyCMS3YClQOZkVKOJzua/3HehEGXJYPumR/VM8Soz8L7HCkKQnSyX
 9/u0=
X-Gm-Gg: ASbGncs87GjxoemD7Q2gQrNIGbVIJCEiJzQvglR+CyikomtvKjiMrUVELFJHr716q1j
 bgVPIDXUR558VJDS5j2p9fDHUq+RHw1gwhCZipltA5CvNhcOBPC8aeH/Ejo78rbb3L0nP3212fw
 HHlhWObhj/+kjWUpXKjtddf8U2OS5us9zTFZd3QMxeWRAKwXK0OAl6j3DsOTbHDwGPd4AgUuZ70
 Zu2aqBL0lsQrb7qBtTtmUDthQfv1fMN4CCU29zMz24Hl3h+V1u+M2h5f1YIVAcRMQeD1c9Q9Zt1
 U0/d18ZousvqPrA=
X-Google-Smtp-Source: AGHT+IHufl43yH4h42TNeRNb4pIxJfhWtSlcWpDN/3IHQPb679izKuQl7RiI9837Q+o9LDGQeygmhQ==
X-Received: by 2002:a5d:47a4:0:b0:38b:ec34:2d62 with SMTP id
 ffacd0b85a97d-38db48a0aa1mr1427352f8f.24.1738744823940; 
 Wed, 05 Feb 2025 00:40:23 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:a766:1fb1:99b5:1d5f])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38db6d7fb3dsm704259f8f.72.2025.02.05.00.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2025 00:40:23 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: brgl@bgdev.pl, linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, joel@jms.id.au,
 andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
 eajames@linux.ibm.com, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Ninad Palsule <ninad@linux.ibm.com>
Date: Wed,  5 Feb 2025 09:40:21 +0100
Message-ID: <173874481706.6250.3472033617115260753.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250204194115.3899174-1-ninad@linux.ibm.com>
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
 On Tue, 04 Feb 2025 13:41:03 -0600, Ninad Palsule wrote: > Please review
 the patch set version 9. > > V9: > Applied, thanks! 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.46 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.46 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
X-Headers-End: 1tfc6b-000133-AO
X-Mailman-Approved-At: Wed, 05 Feb 2025 13:08:45 +0000
Subject: Re: [Openipmi-developer] (subset) [PATCH v9 0/9] DTS updates for
 system1 BMC
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
Cc: andrew@lunn.ch, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 04 Feb 2025 13:41:03 -0600, Ninad Palsule wrote:
> Please review the patch set version 9.
> 
> V9:
> 

Applied, thanks!

[2/9] dt-bindings: gpio: ast2400-gpio: Add hogs parsing
      commit: e8f2ca6be61f1cae2ff12932fa03224581b6b231

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
