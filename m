Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A06637BFB3D
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Oct 2023 14:23:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qqBlu-0001P8-Ho;
	Tue, 10 Oct 2023 12:23:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qqBlt-0001P1-Ex
 for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Oct 2023 12:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oPyRhYnTnlw7DtON8/f4uUVjXj+t1U+rNcjZ4jW1MJI=; b=ipK737JgIXp672Q6fJXwREYDx3
 wtDQuULSrVFijIsPfdrCybCIeY3yeBka+jj7CUZG2zGLhrNaSodqVJU0aBCz1CaW1OyFXQkmH4g0O
 MKf9urvVmkEEYDlmMtwOsWlxm7nPw40cyUZXp3dF+gep296I2RqoVYQBFiZ8A7TqiX8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oPyRhYnTnlw7DtON8/f4uUVjXj+t1U+rNcjZ4jW1MJI=; b=S
 8+/qyZ5puCN1pSoYQalbVNTSzxNDSA4Ljo8dYhQl6LoKxQbEoMLmyhp70NEUzMW7N9cdUspDj6iZW
 4EvE/I25DmIjYLWExyRCQ+iwmdvOdlUAkZZb2MvAjjYxU3qi09h00/1cSa64fJCZSgPxws/oLM4pw
 k9/7ditlQR7Xf0fo=;
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqBlt-00AbOY-EJ for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Oct 2023 12:23:34 +0000
Received: by mail-lj1-f175.google.com with SMTP id
 38308e7fff4ca-2c124adf469so64050901fa.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 10 Oct 2023 05:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696940607; x=1697545407; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=oPyRhYnTnlw7DtON8/f4uUVjXj+t1U+rNcjZ4jW1MJI=;
 b=eTZjRy77nN1GkTX3n3lNnf5b0b20+TbfW3T8McWjAfN7VjDpKSKN9IYuz8WcMlvx+H
 9Sn0veF1YVh7jWxgmNQokgiGDgiDnOQ5H6S71NOBwlsLHHMQdoVd6LN0aLpCKOGDUltm
 lySQYcbPR6eF4TiwbaQrVRpcWCgg2PQZf3www8RopTwaLPLkDp6wK5OkTZGjKzcEg37o
 tH5Qg7PufYz/xVMz7X/lGbPjJBT2Fw0STdsndlfJZLydDGl41ZhaMWGiiLbjkXB5K8Lj
 m2bKYW7WiUIbB5minYDhLSdJnnxpT2pRDuHsX8ydY/hAENOGVnuye+7MLsqRAUIKaaEf
 C0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696940607; x=1697545407;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oPyRhYnTnlw7DtON8/f4uUVjXj+t1U+rNcjZ4jW1MJI=;
 b=w+lru5uM4M9ro6r3OIT/6LFhux97O81htaC5ylkSWnjtOQTqBTQQWdqdRfA5QYc6g4
 5+PqQ5vX8DSD9CGvbHpHhHnfkfK8cyIdBWVTUyEK9nzPul5BqVtLqikeh00jyI+EL8dB
 +1KdWoz821dYVmAv6cFGC+QAwv+YnZjMaSW0M55HGmKmBenTNTSWCEPLP0QKfzpUZp7/
 Ui04n2iTpue0wdC1TIov9CsTNzrK+2jRnYHVMlgcL3f/+pgQg4Z9LHyO1W4OdsPs2uCk
 wMKLXmlNywbxYX1uzDIQc+AlbT4of6FTAIPyfsu1UUtIVjtCvZx5PZ2RoweRXaFXXTA3
 X25Q==
X-Gm-Message-State: AOJu0YzVkkf/YJTIErD0lKoWaOHd9jfE6rUbTBBOaaH98QARG0LYdTrF
 MLmT9e3kg0ywis3mnkUwNc8=
X-Google-Smtp-Source: AGHT+IGxa/VzwMQyk/bDo1finjw3mICZD9B5q0yI+DRUIsS6DH1ij3P9b+SOtVsaRDdkt9gWV6j36w==
X-Received: by 2002:a2e:6e09:0:b0:2bc:e2bc:81ff with SMTP id
 j9-20020a2e6e09000000b002bce2bc81ffmr17213932ljc.51.1696940606426; 
 Tue, 10 Oct 2023 05:23:26 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 g9-20020a2e9cc9000000b002b9e346a152sm2425638ljj.96.2023.10.10.05.23.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 05:23:25 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Tue, 10 Oct 2023 15:23:18 +0300
Message-Id: <20231010122321.823-1-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.175 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qqBlt-00AbOY-EJ
Subject: [Openipmi-developer] [PATCH v5 0/3] Add MCTP-over-KCS transport
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

Changes v4 -> v5:
 - correct spelling errors in description
 - check that rx data is big enough for binding structures
 - use unsigned int type for index and len variables
 - refactor mctp_kcs_rx_work() function
 - arrange local variables in reverse xmas tree order

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
 drivers/net/mctp/mctp-kcs.c                   | 600 ++++++++++++++++++
 include/linux/ipmi_kcs.h                      |  80 +++
 .../char/ipmi => include/linux}/kcs_bmc.h     |   0
 .../ipmi => include/linux}/kcs_bmc_client.h   |   3 +-
 .../ipmi => include/linux}/kcs_bmc_device.h   |   3 +-
 12 files changed, 699 insertions(+), 84 deletions(-)
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
