Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E787E7B69FB
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Oct 2023 15:15:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnfFG-0004Sg-4W;
	Tue, 03 Oct 2023 13:15:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qnfFC-0004Sa-OQ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 13:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D3fi78NvQEfjOfWzfX4wAjQLrovVfB04wfletul8KM0=; b=htJpOIOfpuotSXPP44BiQrFw9C
 Ecit0RO3Ton7z3aejxKssOC2T//gdQ/IR4sqWbRwfqcBIpLlOS24EuB+vFS7Ss8kuG1aM785v2IxM
 UYTCI+3O9icOsPP9HrSNlwNVUILSavWGBh2Sug2gl1Hc2ecKlG6g5sHaH/aPR018jskQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=D3fi78NvQEfjOfWzfX4wAjQLrovVfB04wfletul8KM0=; b=l
 v5a2MhWI+qcCB1iejKP0LXpBqvvG3k8hrhkj+k+00fIEhul0dbktE/WF4nXbTdKR3kHE2Up+xhi/g
 oiCChqCYMQygK0SBixfxPPks/uD6QLZ9ixty0qwhGRQsw3cWe/1HTMBq6O90FVvYFGOkK5+p8zx7y
 UweNSwmvIk5xKQyo=;
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnfF7-00HRC5-Et for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 13:15:21 +0000
Received: by mail-lj1-f169.google.com with SMTP id
 38308e7fff4ca-2c16757987fso10848061fa.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 03 Oct 2023 06:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696338911; x=1696943711; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=D3fi78NvQEfjOfWzfX4wAjQLrovVfB04wfletul8KM0=;
 b=e7NHVvpYNMu0XNa1B93HuFu14pXEuHANgMEUNIKntIj4f1RrXWVQbUVZQRGpVDPEnR
 bHAWHmbvLaFaPjhZKpn9efS6xfGVbwHSr/ZAL8DnE1c1eHMETygFA+aCyDe72+ZRHOFS
 vXhHysJCLLmFa+BQgV0geLTBRjj736UyTTPBKfISikLi+WZ+uS8l/0tG973APoGfQIek
 B5FqvLOLQXPZb5ucDm1r5djA8LSz6EfZFxIP/Gfpy2yUw/RaWUDctomKEk8yQX0c6stu
 BdrjflImN8V9pv1Mfx5YuWaqZc0Z32lqASjMKJN0k7V3ev25yHY4KaTcsk57TibJJ/6F
 HnYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696338911; x=1696943711;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=D3fi78NvQEfjOfWzfX4wAjQLrovVfB04wfletul8KM0=;
 b=UxJ5iVivwB1k5VjcNgVIH//Xjakip30WSXx6zvXxr2Al856pGpjyf1Oa8CxDqvfkuU
 AxRzgGG4pPWbi1OuD0oI90Fx62OpzBbhQ9kwzN1L0l1bBsHCnvoq8ALfUAfZAm/M0RUm
 w2sOoWIDo5UkMrdf0L6SNiAZkCvy1bWR6we4c9JCMNMuDd7XLvJeP8mdBojnGn04TYPr
 cPP7LIGZT1BlKaKPxpSUVLsgvUgny70Oysrd2H6iOBICCEbdkyrEplOi8Yx/L4GvoqFV
 oo1CZgdh5XTEJ7OAfImNLUlwvFL8ckvS1u5C9MxUcOWuSSybA2DtnIiyUm7Zlt5rDE6s
 HtnQ==
X-Gm-Message-State: AOJu0Ywsf1Ct8uY6DfOM2Oig5YXs/mjMa+NBL7GCashePasvPSCA+rgw
 fhgnIcqOLTmid7i44kn55D0=
X-Google-Smtp-Source: AGHT+IGtOe4J8GfD2HhulRf4hZgg+Q4XRQ/Bo4dVYtzPaSqmA5wmNUiaHv9t6UFcrUVi5fzVNQWg5w==
X-Received: by 2002:a2e:3a07:0:b0:2c0:ff6:984a with SMTP id
 h7-20020a2e3a07000000b002c00ff6984amr11636722lja.50.1696338909804; 
 Tue, 03 Oct 2023 06:15:09 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 t25-20020a2e7819000000b002b9de06f119sm228657ljc.67.2023.10.03.06.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Oct 2023 06:15:09 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Tue,  3 Oct 2023 16:15:02 +0300
Message-Id: <20231003131505.337-1-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This change adds a MCTP KCS transport binding, as defined
 by the DMTF specificiation DSP0254 - "MCTP KCS Transport Binding". A MCTP
 protocol network device is created for each KCS channel found in the [...]
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.169 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qnfF7-00HRC5-Et
Subject: [Openipmi-developer] [PATCH v3 0/3] Add MCTP-over-KCS transport
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

Changes v2 -> v3:
 - use 'dev_err_probe' correctly

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
