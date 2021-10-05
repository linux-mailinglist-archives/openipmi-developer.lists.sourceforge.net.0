Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDF9421B3D
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 02:40:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXYVe-00031u-Bj; Tue, 05 Oct 2021 00:40:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mXYVb-00031X-Nx
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TiRGZLUInk+VSQWONfICAgJSHgQvyAp1kctuS/n49Ns=; b=WxRjhwe3DpjglIQXUMoJmOO3Fz
 FxKc2dKE11WKAywCBCvpoPeOiOrgtURGp2Q+ITvEy3MBA2I71q2HNhqJrJCwKlNZIV2uw53yhRofu
 opW1YlAHzL6n+SFfjfXZx2TPDVtMnvpUzASGuSvSdWtZr9mlZsSSW/tVzNm9X2HlPGzc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TiRGZLUInk+VSQWONfICAgJSHgQvyAp1kctuS/n49Ns=; b=A666rFFuKrCYYsm5/ajx9sZCMG
 xrdgtHZ9+s5b3W7hA5ctdTXL1YZifDSZlCFSR+JC8rbgM82lotH+3b8dqnRPJJxJBAojARlRYSjXG
 9dovmzDW3lzpqmjiYo95Z1yz9SJ7PK89RwsMUZXXvgmImeL2J3V5K/XMnkLSQ8hRIgwY=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXYVX-005YbH-MH
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:39 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 97-20020a9d006a000000b00545420bff9eso23865803ota.8
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 17:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TiRGZLUInk+VSQWONfICAgJSHgQvyAp1kctuS/n49Ns=;
 b=Hq2rDL+66nlcqP1eSxP/gbReMlSqYoigXiUyCvxKV+0gFtNA6js/fEbN5d+K9BZvQT
 lpLK+95n0GFj46bjcmUKVD8pdmj1BaTaLwNJZYaOzfmBpiYFJ9YWYwD9J8aV/NDVI/uu
 2XuqM72ISUyxl1K66qI64w0nHpKIqO702aSk4emQv/Cm1wXiamCOLvXfQd15vntdbEgI
 iAVhFWP4oRMrcajxZ//v4zXcNjs4mSdTa9KckBRoh90g9aFsIOShxyXGgRCa6hHkUgHh
 3uQ9MRCA3C40j7uwx7ikRcHGWDTsaKYGcg6Xct735YLYceBTi9lC9fxBk5cpDnCdPRp0
 +BYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=TiRGZLUInk+VSQWONfICAgJSHgQvyAp1kctuS/n49Ns=;
 b=mYZi+xlaW5HGtseZw31dpLdDlLYNoEszNZ8ory7nZkKR7n7piowoTq1TaC4juUm1xA
 sTH/kZLvNRiVBNVYxgLeDBDS0AKDKh1zc1DDOM4eVbpAhu35i6GHQYSQCLHpj51S/rQ+
 2zINq7++XB0TSt626AFknDQXHNohQtkUeR3TpL1zaQwV52F4dLvKYB7U0rCXE2FxK2xj
 QEyGTsLzpe7zG51yHMUoq8yjXHvUpnE/w5BDW7UpEjnnsh0YDLpGU+Nx+OOhQeVdM8WR
 N/qsQxEccLWoxiPr8jIQev11tMH4WjYYpPiLfuWnECbXkgEk8GA/5rr/+gPFgHA54vgH
 8g7Q==
X-Gm-Message-State: AOAM5311GhKCopb7SQ9OvtMAcyqiDGNNDVINlSNKvX5KeXyYE5nDu6yV
 7oHX28rZXG/Id4q/9sUixg==
X-Google-Smtp-Source: ABdhPJwAKm5e9/qpn9qxfPHfD+pcg1OH0h8iMTg9zbtHI1K9LonLeasrXsh0F1yfInevE8lFiUUvDg==
X-Received: by 2002:a05:6830:455:: with SMTP id
 d21mr12020459otc.300.1633394430022; 
 Mon, 04 Oct 2021 17:40:30 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id s29sm3202416otg.60.2021.10.04.17.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 17:40:29 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPA id 985851800F9;
 Tue,  5 Oct 2021 00:40:26 +0000 (UTC)
From: minyard@acm.org
To: openipmi-developer@lists.sourceforge.net
Date: Mon,  4 Oct 2021 19:40:19 -0500
Message-Id: <20211005004019.2670691-6-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005004019.2670691-1-minyard@acm.org>
References: <20211005004019.2670691-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Corey Minyard <cminyard@mvista.com> Describe how to
 use the IPMI IPMB driver, including it's quirks. Signed-off-by: Corey Minyard
 <minyard@acm.org> Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
 Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com> ---
 Documentation/driver-api/ipmi.rst [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.41 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXYVX-005YbH-MH
Subject: [Openipmi-developer] [PATCH 5/5] ipmi: Add docs for the IPMI IPMB
 driver
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

Describe how to use the IPMI IPMB driver, including it's quirks.

Signed-off-by: Corey Minyard <minyard@acm.org>
Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com>
---
 Documentation/driver-api/ipmi.rst | 39 +++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
index c9cb5669bc4c..e224e47b6b09 100644
--- a/Documentation/driver-api/ipmi.rst
+++ b/Documentation/driver-api/ipmi.rst
@@ -591,6 +591,45 @@ web page.
 The driver supports a hot add and remove of interfaces through the I2C
 sysfs interface.
 
+The IPMI IPMB Driver
+--------------------
+
+This driver is for supporting a system that sits on an IPMB bus; it
+allows the interface to look like a normal IPMI interface.  Sending
+system interface addressed messages to it will cause the message to go
+to the registered BMC on the system (default at IPMI address 0x20).
+
+It also allows you to directly address other MCs on the bus using the
+ipmb direct addressing.  You can receive commands from other MCs on
+the bus and they will be handled through the normal received command
+mechanism described above.
+
+Parameters are::
+
+  ipmi_ipmb.bmcaddr=<address to use for system interface addresses messages>
+	ipmi_ipmb.retry_time_ms=<Time between retries on IPMB>
+	ipmi_ipmb.max_retries=<Number of times to retry a message>
+
+Loading the module will not result in the driver automatcially
+starting unless there is device tree information setting it up.  If
+you want to instantiate one of these by hand, do::
+
+  echo ipmi-ipmb <addr> > /sys/class/i2c-dev/i2c-<n>/device/new_device
+
+Note that the address you give here is the I2C address, not the IPMI
+address.  So if you want your MC address to be 0x60, you put 0x30
+here.  See the I2C driver info for more details.
+
+Command bridging to other IPMB busses through this interface does not
+work.  The receive message queue is not implemented, by design.  There
+is only one receive message queue on a BMC, and that is meant for the
+host drivers, not something on the IPMB bus.
+
+A BMC may have multiple IPMB busses, which bus your device sits on
+depends on how the system is wired.  You can fetch the channels with
+"ipmitool channel info <n>" where <n> is the channel, with the
+channels being 0-7 and try the IPMB channels.
+
 Other Pieces
 ------------
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
