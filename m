Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 097147B5541
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 16:35:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnK0k-00061n-UN;
	Mon, 02 Oct 2023 14:35:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qnK0i-00061g-N9
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 14:34:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JRo8zWXIbTH+MSsgpdMHHBi0K2uZ9yNCkZLz05HTkLE=; b=IgyB5yghhn9auN5mOk0nhQwhm3
 owiqyJhPKHvr7idrTrUe47MXU1NNbMUpLvNJB18DltYTdWi9drHVrZEaWRiDLH40yrN8uUH8XR8cz
 lkbz18Q6wVxtsf9cjiWrQiLOg2DV6/2B/yOCdiAmpqlqRTa3L+z3hqTXUFbp3b76BysM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JRo8zWXIbTH+MSsgpdMHHBi0K2uZ9yNCkZLz05HTkLE=; b=M
 wq9NIjJ8Y8YzTKwGHwWj7ATEBx528qRXKQiZR3q2rIFdO5DdZ8iV1Tgepu4FY6AHOGVKW5NcRL3RZ
 Q0Bz2hCGnGujucBCg2KAqzEPrMY41D9IyC21s6u72qm8facn3cWKTJYZfoQtKwGMh1CcaH5O8456w
 EmQyu3mc92FAHGts=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnK0c-0000eA-El for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 14:34:59 +0000
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-504b84d59cbso7415094e87.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 02 Oct 2023 07:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696257288; x=1696862088; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=JRo8zWXIbTH+MSsgpdMHHBi0K2uZ9yNCkZLz05HTkLE=;
 b=Ie059pj4cNwatAKG1kNjNhEdv1FVBa4ddHobtip3U/jIJTOUf0w/FTm0VUo+rpZ+JY
 Vq90cgqXPEK8i3mlutgdgorMcXpily6VBt6p6rx1EQ9FBfhM8YC7PdG5FiPq2/cc5VS0
 u/kG+hJxCom67WsmawqQLrqcCbHJcAhwwhNoxWC93Mh8BJV1ExUTOdJ+fXdgZ4fifGWA
 o1fmz7dewwgkVI+ixuKkSfSfvE62wKFEs6BNPPKsg22F0/7AR2pM4itxmb6paajx4C7j
 Srrrzi6UO2yFof0oU/SNXOanauTxf2u4Y/Bn4zXn67dfj/JoeZ7/QU3G/IM7gWpMmrpx
 gGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696257288; x=1696862088;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JRo8zWXIbTH+MSsgpdMHHBi0K2uZ9yNCkZLz05HTkLE=;
 b=UxhSmqJpD1my6MrqB9hnmq/jFR+mfQJ1B7rIEascq1mSbrF6fKeB3/voQhXRN85QY6
 VJ0n7G75fFEUAdBTEvi2+v9Q7wBWiBPtHxsV+47tqRfsLFHq5ZC0bt90QGM83taNEWFS
 BeqYBjGSKVVr8R8QYm8pO3VVhnUIpRS/fa7xaTKmtj0aV37xd5GBr4e93IHZeX0ZGuiK
 BnXfqk3R7y9OMSP2VCgZKqXB1Q/GRfDFXJuwdFgCAnNxFKrt1KmNCi4AlOvivkQI7TVd
 lFdYh6HCadOM446/aezzMz0wfV7ZVu2QyfgPoJBe7SMSeqw7PCeAWNvu6xdeHn5hIPHy
 tfeA==
X-Gm-Message-State: AOJu0YweSSYhiPnVNWnMHoItFQ7ulCuJIgXqrrKoQPvyJr/J7zdDYUac
 hVN2YUp52OwAG9oIczhUVZw=
X-Google-Smtp-Source: AGHT+IGwJn8GhGMJFPG4WZYvPHFRKQvx5LlaU+/vQduxSEbireFYq96lWqu+zy/REw5BiwvxHGfi0Q==
X-Received: by 2002:a05:6512:3134:b0:502:fe11:a694 with SMTP id
 p20-20020a056512313400b00502fe11a694mr9225535lfd.45.1696257287690; 
 Mon, 02 Oct 2023 07:34:47 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 e8-20020ac25468000000b004faa2de9877sm4751642lfn.286.2023.10.02.07.34.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 07:34:47 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Mon,  2 Oct 2023 17:34:38 +0300
Message-Id: <20231002143441.545-1-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This change adds a MCTP KCS transport binding, as defined
 by the DMTF specificiation DSP0254 - "MCTP KCS Transport Binding". A MCTP
 protocol network device is created for each KCS channel found in the [...]
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.41 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
X-Headers-End: 1qnK0c-0000eA-El
Subject: [Openipmi-developer] [PATCH v2 0/3] Add MCTP-over-KCS transport
 binding
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

Changes v1 -> v2:
 - correct warning found by kernel test robot
 - use 'i2c_smbus_pec' library function for PEC calculation
 - several code style corrections based on Jonathan Cameron comments
Original patchset can be found here:
https://lwn.net/ml/linux-kernel/20230928123009.2913-1-aladyshev22@gmail.com/

Konstantin Aladyshev (3):
  ipmi: Move KCS headers to common include folder
  ipmi: Create header with KCS interface defines
  mctp: Add MCTP-over-KCS transport binding

 drivers/char/ipmi/kcs_bmc.c                   |   8 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c            |   3 +-
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c         |  73 +--
 drivers/char/ipmi/kcs_bmc_npcm7xx.c           |   2 +-
 drivers/char/ipmi/kcs_bmc_serio.c             |   2 +-
 drivers/net/mctp/Kconfig                      |   8 +
 drivers/net/mctp/Makefile                     |   1 +
 drivers/net/mctp/mctp-kcs.c                   | 594 ++++++++++++++++++
 include/linux/ipmi_kcs.h                      |  80 +++
 .../char/ipmi => include/linux}/kcs_bmc.h     |   0
 .../ipmi => include/linux}/kcs_bmc_client.h   |   3 +-
 .../ipmi => include/linux}/kcs_bmc_device.h   |   3 +-
 12 files changed, 693 insertions(+), 84 deletions(-)
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
