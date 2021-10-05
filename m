Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1262421B3F
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 02:40:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXYVc-0004W4-CD; Tue, 05 Oct 2021 00:40:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1mXYVa-0004Vp-CJ
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=twlmdLpCjDHz+27xQowbGFx/HnS32RO/0/zhYrwu5jc=; b=d+wOHOeIFKngnTdjKqOWDoh0ke
 5CnCH2ZgJsb1CzrZ4zD5nQHFeuVxw3yTcGOJjUt05XUk7o9opz4d19FSvfZVITZF8Bo7CuGL5OkF4
 kVQs1T/I8kycEkdGkas9Fv8LOCfPvy9Isvv8tkLq8lpmk533KiihJMovhjg+E1Bxx7uQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=twlmdLpCjDHz+27xQowbGFx/HnS32RO/0/zhYrwu5jc=; b=C
 al/y2/h5wV93PeNhc56xSc5OnG/IMWhSfba42vFO0zcHAU+TKZeLgmO0KyabWVa0F76huOBODwR6W
 JHe9RujeL6uvBWmAhgci54gJrofdyP+vUL801RwKJb901hqM3EBHG4FbnspirdMuCjuomPqfZuong
 uUghxY2ri0qx1gQs=;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXYVV-005Yb9-PI
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:38 +0000
Received: by mail-oi1-f170.google.com with SMTP id u22so136272oie.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 17:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=twlmdLpCjDHz+27xQowbGFx/HnS32RO/0/zhYrwu5jc=;
 b=SHePYSTfcrqkRCYKDK4A2wTPJO6USO07h5XtUb5VYbBwgIl9NQZqYd/9RK3n/Nxmds
 +XlsOrpXQEip3fTsGTANg7isCBSJ0y7voN6BIdofjC+hEw0i+YolqBdtDxtwJAf+AiXv
 hDXzr/zX/Ehq9gg2q8mSCLHOfVmM//+q8tEfvGnNcsa+xriQRxVSjyMiD+qMCC1OJnQA
 j7BUv37P5BCfNcVTuPzq7MS4Do+x7Nsa3z7w3FlvhwFGNS24HyWOzjxLaMDc07pZisOV
 n8qxSYaA1corlyb16HN7mgK+6XGWFKFeTG5ruOJ/94cfjDb0IiiBymcEtgZFqHtCm6Cf
 BQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=twlmdLpCjDHz+27xQowbGFx/HnS32RO/0/zhYrwu5jc=;
 b=hGI+NhSMu1JfG2qUBwG7wgQ08Ej05VHQKa+sKWVJZEa+BgNkrYvboL8x7SE6EzjHMS
 w6+VnJp4LzaIGFqhwuDmmAnBHV08i+L2p2fKgUxbyzxCfvUlLY5ynqEPfdKDhOc7wRJw
 1OTj/7jdKAFldEa6ZLoBHTz6WjWp9kDU3Lb9ftgU7Pjf8dCTTw0kLZ2LrCIvON08Xa1j
 Y/wWU7o7l8lWrs0DBsBxInjf4jm37m7ERFXFV3ksiNpdGMne/sBS1rnWWrWVuqdNSABt
 QLLH9C81OlR8Lu+b5QzRCmwHe4b7BvbViT2Qjx3moutMmA3Jp4vNvfbn/VTIXBaRtTPa
 w3Qg==
X-Gm-Message-State: AOAM530FFU6yq/H5rvudyuVYEG2nxSopRJjLKfvU5bHdM2b+qOTtJEzy
 MgPKhkgiZShW91di+EVZEpj5Z96WLg==
X-Google-Smtp-Source: ABdhPJzdt7qibam/jvY3sK4t2jDT0lMobLyudIZhl7z4tRh9IRf+VuMHCMSdzeElDGG4U+0T0MCh8A==
X-Received: by 2002:a05:6808:a06:: with SMTP id n6mr146076oij.86.1633394427736; 
 Mon, 04 Oct 2021 17:40:27 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id x8sm2734163otg.31.2021.10.04.17.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 17:40:26 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPA id BA92C1800F0;
 Tue,  5 Oct 2021 00:40:25 +0000 (UTC)
From: minyard@acm.org
To: openipmi-developer@lists.sourceforge.net
Date: Mon,  4 Oct 2021 19:40:14 -0500
Message-Id: <20211005004019.2670691-1-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch sets lets a devices that is sitting on an IPMB
 bus talk to the BMC as a normal system interfaces. It also adds the ability
 to message other MCs directly on the IPMB, and it can receive commands and
 respond on the IPMB, too. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.170 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXYVV-005Yb9-PI
Subject: [Openipmi-developer] [PATCH 0/5] Add support for access through an
 IPMB bus
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
Cc: Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch sets lets a devices that is sitting on an IPMB bus talk to
the BMC as a normal system interfaces.

It also adds the ability to message other MCs directly on the IPMB, and
it can receive commands and respond on the IPMB, too.

This is not meant as a replacement for ipmi_dev_int.c.  If you are doing
a full BMC, that's probably a better choice.  These changes are for
devices talking on the IPMB to BMCs or other MCs that might get some
commands to handle.

-corey




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
