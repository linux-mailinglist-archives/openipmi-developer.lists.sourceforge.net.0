Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 056FF7BB4AE
	for <lists+openipmi-developer@lfdr.de>; Fri,  6 Oct 2023 12:02:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qohfF-0001Ps-Oa;
	Fri, 06 Oct 2023 10:02:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qohfE-0001Pk-37
 for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 10:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ktL+I01NTaZsZ6v/JRIqW6LdHu2rTqqgaRhir8MBsc=; b=WYUQ94UnjEbx6FHJyBa8uSb2Mq
 3NP/I3rbqgrLgCEPsQqEQF5SvePjLnczlKlPeUpZmAvH6RPcsrpR9EmBopdDO05JP44mcAdYq+FRd
 8tyYYo3bIK2nrI+MFFgKTSeNgpIPDawDG0/UuGp98sNoccc4Ra6fmaR24ASXcgcTJoWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2ktL+I01NTaZsZ6v/JRIqW6LdHu2rTqqgaRhir8MBsc=; b=Y
 Re1Bj1OzSjuCJHxaB1Kzp/zvhCdT+Z2PgTAsnzG+cwG0LeXpEfmGVKEjyP4AzE8G0gcW8g9xvn9wO
 +yA6qVh47B6NdVB2aJuItPkBoOIw/WYL8s4B1gq/GgxLVhUP8NA9LtoQQMztgFnhcXGO6f/U5x6Fe
 fpcfAqDiP0eeGV3E=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qohfA-003Iw9-7F for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 10:02:32 +0000
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-2c1854bebf5so23533741fa.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 06 Oct 2023 03:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696586541; x=1697191341; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=2ktL+I01NTaZsZ6v/JRIqW6LdHu2rTqqgaRhir8MBsc=;
 b=DNLwr8xzWVYIpORrFAnyp34dNgdGnXyyd29/mgL6Sllw/BQB/U/UDD+O5lcuAv7NHe
 6EGrVCZWHDQyUNOToemfKNBKy7R+Kpvm0tps2MAUp7yqhM9CYTsT/uR1xV6anIl0IW0M
 /ywwK1RuJ437cmHZm7lqzlCiF5MDGIRuD2GMEtnIpepClaV/iW785Bv0Bl208Uw5ACcB
 hQjzEi4twr6XpO1lcBIxDq47cGWbFju0BU8y7dlB+NEzsDMWY96hqfq7Y8Lw9qdYr03P
 FY+EvM4jgof5hbKwz/FlOBoMppwqcF2dBVe340Dp3V7++VNSTjeNeV/er1X7bplZDa/A
 xzIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696586541; x=1697191341;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2ktL+I01NTaZsZ6v/JRIqW6LdHu2rTqqgaRhir8MBsc=;
 b=TQtkpNEHD8skMjdMAyYeNOvILNPTA24sOqCIq60ab3kX91XfokLoknHVTcz84nz4l+
 TCjCCSj/dx7F8JPxpq+Fa70sJT9yAXnNeu+jd61R1y/75aK7OCjQpT9cWXiawzz0pu4L
 CcPgcR7tmsODmXWDnjfjoPu3cZH2nyVp8adDmXJVt/2/GqpY9a3051rUHtxBoVEGVovh
 oKXTSkuzcyux7IvpL/iamHoQ6T0NpFm44TP1EXqsQFMsGKooFXFhGxcd2JluBpBnBWQZ
 y6/U3vOZS0WRQPLK9HC0U5SZCSGpT5U65Fp0zUNdtzyTkthMv2D5GigVzb0LQ4N1MK2V
 pAPw==
X-Gm-Message-State: AOJu0Yyxl75R2JhsA8eUVNbyHTLYcGqplGaNZ4A8NhZk31KZGO3dBXVc
 Cd4+OKZv6R3HGIAeoc49mLWoK+XM0sER+zUyXhQ=
X-Google-Smtp-Source: AGHT+IHaRqD4DeoB0LFomJ3p3asSCL0QydjpRcHT/wndYgqlLfX//Z7aKLjPnDZygv7OoEPADcdwSQ==
X-Received: by 2002:a2e:9053:0:b0:2c0:3284:64d5 with SMTP id
 n19-20020a2e9053000000b002c0328464d5mr5922469ljg.47.1696586541184; 
 Fri, 06 Oct 2023 03:02:21 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 x12-20020a2e9dcc000000b002bcedacd726sm713674ljj.25.2023.10.06.03.02.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 03:02:20 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Fri,  6 Oct 2023 13:02:11 +0300
Message-Id: <20231006100214.396-1-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This change adds a MCTP KCS transport binding, as defined
 by the DMTF specificiation DSP0254 - "MCTP KCS Transport Binding". A MCTP
 protocol network device is created for each KCS channel found in the [...]
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1qohfA-003Iw9-7F
Subject: [Openipmi-developer] [PATCH v4 0/3] Add MCTP-over-KCS transport
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

Changes v3 -> v4:
 - drop 'inline' keyword

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
