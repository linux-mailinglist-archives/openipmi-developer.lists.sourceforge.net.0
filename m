Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 625262FA256
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Jan 2021 15:00:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l1V4c-0001Av-KR; Mon, 18 Jan 2021 14:00:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1kzN9d-0001wz-Ih
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Jan 2021 17:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w/GCOziY9FL6bXyLQUrs9Kdne2x79Vc/ecyaINlnInM=; b=f4N/yG199R3zaT4sqva1gR3kp5
 TZswOYGlsr+LMEooEUZUUNoTYNGJG7u3DW25ayLVhfAAXKJVBnTNGkypHS1CH07j/dyb3Ju5g1c3r
 uqcNQc8OqD7qOF/s8Q1ArkCAtIy1mjjZJ0UXf7xo91YqNHlEsOUGIV9wdqaL+jl11i/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=w/GCOziY9FL6bXyLQUrs9Kdne2x79Vc/ecyaINlnInM=; b=U
 fLDipygrsXI8mzZF/JdqRA2ttihp4kZcyoeIGg4IGWKWCPOFSUfbM8ZkGohY1D1TcAtnPVvyJ1J+/
 afVaxPme5ARxnojFWn5XDlDfON4qJbZfFE8u9P7QHtlWdqm5yUkbv2jqpZfFoNm9TNybL9a8o0ncs
 zc9MU8EiCUe9KmZM=;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kzN9Y-00EcP7-01
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Jan 2021 17:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=k1; bh=WLEbJPC873nWMnwiOyARO6xkxnK
 66e/bwM7RBGOc70U=; b=3aWck16ZLDFqsEERVcrG/peOwcndHVX81Zdi5G2ZNnP
 w+9LXhDQNUemSSZLlLj0qZtGyFKOQte76GZYWEWVFUafwUH5CO1XQ58ciL4S1pNU
 INxkLjEZppFgDcGN8TM0qah05T4kowS/Zm9NEpTL6KAipNtU8dLBw/x9YYQf3Heg
 =
Received: (qmail 2812363 invoked from network); 12 Jan 2021 17:41:32 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 12 Jan 2021 17:41:32 +0100
X-UD-Smtp-Session: l3s3148p1@h5zqsba4RtEgAwDPXwxzAHrEwO71dOp2
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Date: Tue, 12 Jan 2021 17:41:26 +0100
Message-Id: <20210112164130.47895-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [194.117.254.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1kzN9Y-00EcP7-01
X-Mailman-Approved-At: Mon, 18 Jan 2021 14:00:00 +0000
Subject: [Openipmi-developer] [PATCH RFC 0/3] treewide: remove open coded
 SMBus block transfers
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The bigger picture is that I want to extend the maximum block length for
SMBus block transfers from 32 (SMBus2) to 255 (SMBus3). That needs some
cleanups and refactoring first. To make that easier, it would be helpful
if all in-kernel users would call the helper functions of the I2C core
for SMBus block transfers and not open code it via the generic
smbus_xfer.

This series converts the three users doing that. I don't have the
hardware, so these patches are only build tested. Please let me know
what you think.


Wolfram Sang (3):
  media: i2c: adv7842: remove open coded version of SMBus block write
  media: i2c: adv7842: remove open coded version of SMBus block read
  ipmi: remove open coded version of SMBus block write

 drivers/char/ipmi/ipmb_dev_int.c | 21 +++++++----------
 drivers/media/i2c/adv7511-v4l2.c | 40 +++++++++++---------------------
 drivers/media/i2c/adv7842.c      | 14 +----------
 3 files changed, 23 insertions(+), 52 deletions(-)

-- 
2.29.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
