Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0997B1D71
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Sep 2023 15:13:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qlqpC-0004dK-1H;
	Thu, 28 Sep 2023 13:13:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qlqAJ-00036E-Q2
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 12:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Gm1ISeW+idItfKS/eOu6/qm0WSJn6LCWGU5CplrSsM=; b=TXS/6a5z4uGSUGYndj7GDDTS6r
 MQM860Eyqpa7weStygyBNXaSjReP/NnPy/jOGMuRKL0iWnoQ4/kg/V89WN0OEKEB8eIn6lyhp9TbY
 VvDqZXZnQyrd7BLEZUOAsnxuIGhL8AN3EK9782OiDa9GB1SU+prJtlXqVqwdv3KNRtgY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1Gm1ISeW+idItfKS/eOu6/qm0WSJn6LCWGU5CplrSsM=; b=Y
 rshWUecevOwzJ4MXVUKVE0C5YDkqPe24u2AqnK/PaUTIdrrLlzHhVCzY7AaqNPE/k/M8j13qRT5cs
 57mI+EelEWmhYRF8DRSQpSj7kkbeD7SRiH3+jypyBAGhga0Rb1E8VqfaYs/Lr8QjZW9jwm/SEl8SA
 4FhPu3h8trSy1KwE=;
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qlqAE-0005Pq-Ol for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 12:30:46 +0000
Received: by mail-lj1-f179.google.com with SMTP id
 38308e7fff4ca-2c189dabcc3so33321571fa.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Sep 2023 05:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695904236; x=1696509036; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1Gm1ISeW+idItfKS/eOu6/qm0WSJn6LCWGU5CplrSsM=;
 b=A1P1hQcoeSfHGk8Kz2k5J12A3WM5OHbDu2MEHxXKrTFbsRVJq9eVYCofbx7Qx7HFV+
 UYBZph+Wig+0citNmCKrkojQRxVXlRQ4c8NXzpYON5AoOXUfrMTbA4zEoas8aecYmaVc
 pdrDkXfMgtiXpw2s+fvtLQniN9t3FGgqu4vBTkOlxOuRdxuFEzorz56rlxSc2mmfN8FV
 qmy4FulR/lmu5LaDkTWmTnUiH3k8cgfG8x1ENLLpvGM2NkQWxOLH/fcwyI1tSiv4chsJ
 oE0Ka4rLXi82cakQVKzme4LAWLC0Sn9Q0WWCtFmJoKhAwDXHa/QBojKRiZCbFoH63ihg
 BhKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695904236; x=1696509036;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1Gm1ISeW+idItfKS/eOu6/qm0WSJn6LCWGU5CplrSsM=;
 b=t/akZAX3zYUITZIU0WII5eJ7Vk2yffG2junEMH0OFNrPaQhmruNfdoBcbLLGxGTvpo
 rdKQBaO8djY7XvZwNNTrTZfyrKcvyAIOFNbm9LI/pmB36n+x+0d5+8qZTkSgldMoQSru
 thWyosTLm6OkJ6Ato+OxgcGWgW/Y6UGmz1NxhpW1noJ7Vr1bap0wT5AHFdBTQOpH5bl0
 B7h9G6srsf9Sg0QrKh9yVFnpipQgy0/n5WbbOU0BCCSxa2i54OrpkuVv8GuCIX20vTGN
 q9KxV/4l+G6wJjBBJZxHB0S8bCMFx7/0ov0oqRu9rWbggiqIPAyhgY6ddNPr0Oa9kAj4
 KfAw==
X-Gm-Message-State: AOJu0YzE+O2WGTAvy7yJxmL6VbiShLOrI/SpffdfFvPmLVxOlvq+Om45
 p16V4aPs1rMF98ohGr2mw+k=
X-Google-Smtp-Source: AGHT+IELWBzD5+DshFb82aU+91c6MxU621XWEWP2vB5rQd9UYeEMJrPISaje63D4gQs+E+MgoEPD8w==
X-Received: by 2002:a2e:2c16:0:b0:2bf:ff17:811e with SMTP id
 s22-20020a2e2c16000000b002bfff17811emr1044718ljs.14.1695904235857; 
 Thu, 28 Sep 2023 05:30:35 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 x6-20020a2e9c86000000b002ba045496d0sm3588724lji.125.2023.09.28.05.30.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Sep 2023 05:30:35 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Thu, 28 Sep 2023 15:30:06 +0300
Message-Id: <20230928123009.2913-1-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This change adds a MCTP KCS transport binding, as defined
 by the DMTF specificiation DSP0254 - "MCTP KCS Transport Binding". A MCTP
 protocol network device is created for each KCS channel found in the [...]
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.179 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1qlqAE-0005Pq-Ol
X-Mailman-Approved-At: Thu, 28 Sep 2023 13:12:59 +0000
Subject: [Openipmi-developer] [PATCH 0/3] Add MCTP-over-KCS transport binding
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
Cc: tmaimon77@gmail.com, linux-aspeed@lists.ozlabs.org, tali.perry1@gmail.com,
 edumazet@google.com, jk@codeconstruct.com.au, matt@codeconstruct.com.au,
 benjaminfair@google.com, openbmc@lists.ozlabs.org, yuenn@google.com,
 kuba@kernel.org, pabeni@redhat.com, minyard@acm.org, aladyshev22@gmail.com,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 andrew@aj.id.au, venture@google.com, linux-kernel@vger.kernel.org,
 avifishman70@gmail.com, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This change adds a MCTP KCS transport binding, as defined by the DMTF
specificiation DSP0254 - "MCTP KCS Transport Binding".
A MCTP protocol network device is created for each KCS channel found in
the system.
The interrupt code for the KCS state machine is based on the current
IPMI KCS driver.
Since the KCS subsystem code is now used both in IPMI and MCTP drivers
the separate patchsets move KCS subsystem includes to a common folder.

Tested:
PLDM communication between the HOST and BMC was tested with both
components implemented via open-source software:
- The HOST (UEFI firmware) part was based one the edk2 [1] and
edk2-platforms [2] code,
- The BMC part was based on the openbmc [3] distribution.

The testing process and all the necessary utilities are described in
the [4] repository.

[1]: https://github.com/tianocore/edk2
[2]: https://github.com/tianocore/edk2-platforms
[3]: https://github.com/openbmc/openbmc
[4]: https://github.com/Kostr/PLDM

Konstantin Aladyshev (3):
  ipmi: Move KCS headers to common include folder
  ipmi: Create header with KCS interface defines
  mctp: Add MCTP-over-KCS transport binding

 drivers/char/ipmi/kcs_bmc.c                   |   8 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c            |   3 +-
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c         |  73 +-
 drivers/char/ipmi/kcs_bmc_npcm7xx.c           |   2 +-
 drivers/char/ipmi/kcs_bmc_serio.c             |   2 +-
 drivers/net/mctp/Kconfig                      |   8 +
 drivers/net/mctp/Makefile                     |   1 +
 drivers/net/mctp/mctp-kcs.c                   | 624 ++++++++++++++++++
 include/linux/ipmi_kcs.h                      |  80 +++
 .../char/ipmi => include/linux}/kcs_bmc.h     |   0
 .../ipmi => include/linux}/kcs_bmc_client.h   |   3 +-
 .../ipmi => include/linux}/kcs_bmc_device.h   |   3 +-
 12 files changed, 723 insertions(+), 84 deletions(-)
 create mode 100644 drivers/net/mctp/mctp-kcs.c
 create mode 100644 include/linux/ipmi_kcs.h
 rename {drivers/char/ipmi => include/linux}/kcs_bmc.h (100%)
 rename {drivers/char/ipmi => include/linux}/kcs_bmc_client.h (97%)
 rename {drivers/char/ipmi => include/linux}/kcs_bmc_device.h (96%)

-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
