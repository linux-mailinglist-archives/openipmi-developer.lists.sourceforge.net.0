Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3F39A4F47
	for <lists+openipmi-developer@lfdr.de>; Sat, 19 Oct 2024 17:41:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t2BZb-0005lV-O4;
	Sat, 19 Oct 2024 15:40:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1t2BZb-0005lO-2J
 for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 15:40:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v4Uv5hiIJcl+gNtdMTw9XcqP383LUWg/Fi53HakEUK8=; b=aK8p7spIo/gIhR1yKuZYvDFJZl
 RztoMnTpNf7MhTz63WeHjr/BTA37d2JWJW6CT+j2HQSaWmBqz2RRMnrINcL6sdun9Ft3rf4BU0OIV
 Wq1bq+y2TJrfS+wGbVd6QpUbha1DYzQs+sB+KnWt7JheKzEDryw6IAMsH76jckoZaROA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v4Uv5hiIJcl+gNtdMTw9XcqP383LUWg/Fi53HakEUK8=; b=b
 6veV0K5JBPuS177jsG9zh6K4sTfg9UjQYWgS5PI3Y4GvLRdsGNH4pX1z55tBuaeRog+W+yPsLOKG6
 3DcQdIC4QwqqfNEBpEQLJOOaNG9oLewjrQtixx1VrMbyfWqi+ZFYyrNCfSIeSyAXJOZyzyodzR3Jy
 aPSweejkbmQ+xDts=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t2BZa-0002qC-Fs for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 15:40:58 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 98e67ed59e1d1-2e2dcf4b153so2388257a91.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 19 Oct 2024 08:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729352448; x=1729957248; darn=lists.sourceforge.net;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=v4Uv5hiIJcl+gNtdMTw9XcqP383LUWg/Fi53HakEUK8=;
 b=Henyg3Z+JveoxUFlItDBCP8lvd6wRiAttSfG6rvJtx+L/UGo7adkUyul/3Ymhxo1FV
 OsNITiLDmaQ27GgM3lawLDOqEEebg0o9u63z+wc1vBvN4wirPrFk9sLmrrQTbeEfiIO0
 JTffX1b48HiX0bBZ68YFYRvBGFtBEfvyhOvpLp/Q9DIjss244pxlcCRO1RV3OXdRATvE
 BB0PP/DkLP0vX9thXC1H1Ve0LfTvC5Ir5UoVG0CuJKhVy/EyhBSjAAlu6cEYZlKFd2bK
 egqn1gAkviuDmcRKk4a/DIRGzwWHUekgLrPxR4GdVjbnC4PSKSPcFuISr7Q/pY8cTf7+
 V6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729352448; x=1729957248;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=v4Uv5hiIJcl+gNtdMTw9XcqP383LUWg/Fi53HakEUK8=;
 b=MIMJcgNXzjNYqGqQW3ggGb4N+EUch3piIKEoWpjT5kwKW7ib3CA6Wael/e39mZ11td
 XtJccWvKan09Q6yrGBp1QaxR4UximOQdsaLfePrfr/Pp8CmslWXJ9qEoyRuVTq6qbAaN
 KehT9CRAsPHzCAjuOf6UiEhkhJQRmYVF3ZWz9RJa8KfVIl/lz+7yoche6F8BzzHCwUAC
 +rY7KX5KV6DT9JU0HoomyWcFpkR6GLu9SlRi6pXF8L3RYyROlAfxlzW0R8hef3oOPT0v
 PnPtZUkEuTtYac+MynT4Ke1fvNmVrnKI+z6c73XE8XChE3mVgTC92O15hCHlq8b0SgK3
 SBEg==
X-Gm-Message-State: AOJu0YxSPeWU9OY1nbhF+H7zgLVTdwnytiZke11+NdF1F9zzsiet1Hub
 swPPa/bx9msfQeS5HZTOEXJGgfyjZlYUsMudCpz/pxJfKw4k8oNz
X-Google-Smtp-Source: AGHT+IGhk0FG86WurYfMXZNeljpSB0B3Oz4w5ASHYB7zv2mdsaskKxbpVa2mFWbnRTW+0JWqsFE7lA==
X-Received: by 2002:a17:90b:180a:b0:2e1:d5c9:1bc4 with SMTP id
 98e67ed59e1d1-2e5616db895mr7136223a91.7.1729352447712; 
 Sat, 19 Oct 2024 08:40:47 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e55d7ade96sm2781319a91.1.2024.10.19.08.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2024 08:40:47 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Sat, 19 Oct 2024 23:38:03 +0800
Message-Id: <20241019-ssif-alert-gpios-v1-0-483eee5f99d3@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFvSE2cC/x3MSwqAMAwA0atI1gYaESFeRVz4STUgrTQiQvHuF
 pdvMZPBJKkY9FWGJLeaxlBAdQXLPoVNUNdiaFzTkiNGM/U4HZIu3E6NhjQzd84z00xQsjOJ1+d
 fDuP7fhcLy6piAAAA
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729352444; l=777;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=EQTF4yPETJ4ZfWpwkClS9KnPHJFZCEQHNFzT0ldZ/y8=;
 b=5Ky9PMTmDt6rvmU+APztMZkBKIMX3ijrMEiHKEjnlPWr8qdbsVHesGVYPdUAP/STOfiaELYmf
 me9rIymaM0sBohuMdekmL+b3m9a7JM2gEVBeHcPhHFD/vYvx8witA7w
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch series introduces a GPIO-based alert mechanism
 in the SSIF BMC driver. It allows the BMC to notify the host when a response
 is ready, improving communication efficiency between the BMC and [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t2BZa-0002qC-Fs
Subject: [Openipmi-developer] [PATCH 0/2] ipmi: ssif_bmc: Add GPIO-based
 alert mechanism
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
Cc: devicetree@vger.kernel.org, Cosmo Chou <chou.cosmo@gmail.com>,
 Potin Lai <potin.lai@quantatw.com>, linux-kernel@vger.kernel.org,
 Potin Lai <potin.lai.pt@gmail.com>, Cosmo Chou <cosmo.chou@quantatw.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch series introduces a GPIO-based alert mechanism in the SSIF
BMC driver. It allows the BMC to notify the host when a response is
ready, improving communication efficiency between the BMC and host.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Cosmo Chou (1):
      ipmi: ssif_bmc: add GPIO-based alert mechanism

Potin Lai (1):
      bindings: ipmi: Add alert GPIO enhancement for SSIF BMC driver

 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml |  7 +++++++
 drivers/char/ipmi/ssif_bmc.c                         | 15 +++++++++++++++
 2 files changed, 22 insertions(+)
---
base-commit: 8e929cb546ee42c9a61d24fae60605e9e3192354
change-id: 20241019-ssif-alert-gpios-1b9960f991b1

Best regards,
-- 
Potin Lai <potin.lai.pt@gmail.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
