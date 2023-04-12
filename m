Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6D06DED7E
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Apr 2023 10:22:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pmVjn-0000Tb-8h;
	Wed, 12 Apr 2023 08:21:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1pmVjj-0000TU-6q
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 08:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m2IjbsVOhNCg3aQ00nTIOqWS5jRm5oFZnr9gH8yE6RM=; b=XyHI3nO8XrxZ0Z6cnVMx8fvcTu
 B/WZoSFqAUIWycvnjQ8gnM52zJVbxio1bfzeffGLCyA7x6ndsLR8kd2atxsY19YtoYXDzhPFoPtuP
 s1ff4jvpeHDZREnqD52TOhrpLjunF6mUG33pXCf82aXMLIOJfoulGwnx67SYP992jKCk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m2IjbsVOhNCg3aQ00nTIOqWS5jRm5oFZnr9gH8yE6RM=; b=M
 J85qC8+94GYUtHNY2CPUT1sMAg7fMqS6mURnLIY0e31f2Ig8xfwk6rNpSM0GaCv+u2orG2SPDGLzn
 OdbaZ6ti5J3DZqoa7HJ52MzdXSNKL5i9URM67wlhxK/P+xbI//5YWSY9udBDffnz6PLvaMvSYHRoL
 KjhxCKOZO0zY6+vA=;
Received: from mail-yw1-f177.google.com ([209.85.128.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pmVjd-0056pk-0z for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 08:21:50 +0000
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-54fa9da5e5bso5148767b3.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Apr 2023 01:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1681287699; x=1683879699;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=m2IjbsVOhNCg3aQ00nTIOqWS5jRm5oFZnr9gH8yE6RM=;
 b=fTKMyZIX0VzAHOfqLLUzEFMsG3zpC5LLb771qSNJhcn+d2QPA/VPaWBlU1bQuUD+In
 rK6Fb3+CoXmcT6/HAXLNoHu+nc3rH2uesID9XY2HDN9E3k3A8kjFIA51lGAwNLyOp35L
 wxU51D6ddiHpwjr7z4SczeSVABvv3rcVLuwoeO8nu6Y2i9H6/9V6+eTnccAe3XYSGQzd
 /jFfwdqhoVOGokDvf6HL+cHGecz+vwsWtC/w6bGVvZy/vKRB3LWEuLtovqIofGtSRZlq
 Sdn4x7K9ezqnb8xbBlT0hjnVgIKI/HCGOP/9FxcgAThNdMTNnjLF7rGBYkbhITisXC8m
 aJzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681287699; x=1683879699;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=m2IjbsVOhNCg3aQ00nTIOqWS5jRm5oFZnr9gH8yE6RM=;
 b=xYfwIHXQ+cdaXVb9zgfQJZ8LaaUCE+d1IGF6nAVJEWy8um+WXVi2KMv0yWKrKYRloH
 hUkngDeObfEiOpLGhha1mL4dHqv2lfnrnWm/JAXlUPbCqvjJzT9LrTU0BgNQ/vWXBsgt
 Aj8tBn1ga5VJyEPVdFAr2u1h5qWzFauVUMyLshp7ZNX/BLi0hqTxlIOT/wOmBdop2wT3
 FBl0fgTNLUliTQj01aCcJe1uI+liUASfelU8gEp7AhlU3uS7BywWFWszixZ2ho+NsdEJ
 f8hugiOXpmk2no+FRC17HmOmo0G1TW8+UdAty6tn214Rw5gAa5hJ8U10VYf1m/xsvI+W
 cfpg==
X-Gm-Message-State: AAQBX9eT7+id8tHfV/2tbxwTboUqaMSvBnHg6P7c5VtEVdl6cHTor//h
 KNZIFwomCNPRKH6NLAoMBoLIBdSLB09MVhqikqg=
X-Google-Smtp-Source: AKy350bBLdKZ/XoTz4mv/hfBjhh6jVJEzf+qAn1A8imjGu0QJXoRZq85N1quPoelTIt2buROGw3cUw==
X-Received: by 2002:a62:4e06:0:b0:62e:43ce:e6ab with SMTP id
 c6-20020a624e06000000b0062e43cee6abmr14316778pfb.13.1681285771034; 
 Wed, 12 Apr 2023 00:49:31 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.226])
 by smtp.gmail.com with ESMTPSA id
 r25-20020a62e419000000b0063949531089sm4517016pfh.220.2023.04.12.00.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Apr 2023 00:49:30 -0700 (PDT)
To: minyard@acm.org
Date: Wed, 12 Apr 2023 15:49:07 +0800
Message-Id: <20230412074907.80046-1-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The ipmi communication is not restored after a specific
 version
 of BMC is upgraded on our server. The ipmi driver does not respond after
 printing the following log: ipmi_ssif: Invalid response getting flags: 1c
 1 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pmVjd-0056pk-0z
Subject: [Openipmi-developer] [PATCH] ipmi: fix SSIF not responding under
 certain cond.
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
From: Zhang Yuchen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 zhangyuchen.lcr@bytedance.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The ipmi communication is not restored after a specific version of BMC is
upgraded on our server.
The ipmi driver does not respond after printing the following log:

    ipmi_ssif: Invalid response getting flags: 1c 1

I found that after entering this branch, ssif_info->ssif_state always
holds SSIF_GETTING_FLAGS and never return to IDLE.

As a result, the driver cannot be loaded, because the driver status is
checked during the unload process and must be IDLE in shutdown_ssif():

        while (ssif_info->ssif_state != SSIF_IDLE)
                schedule_timeout(1);

The process trigger this problem is:

1. One msg timeout and next msg start send, and call
ssif_set_need_watch().

2. ssif_set_need_watch()->watch_timeout()->start_flag_fetch() change
ssif_state to SSIF_GETTING_FLAGS.

3. In msg_done_handler() ssif_state == SSIF_GETTING_FLAGS, if an error
message is received, the second branch does not modify the ssif_state.

4. All retry action need IS_SSIF_IDLE() == True. Include retry action in
watch_timeout(), msg_done_handler(). Sending msg does not work either.
SSIF_IDLE is also checked in start_next_msg().

5. The only thing that can be triggered in the SSIF driver is
watch_timeout(), after destory_user(), this timer will stop too.

So, if enter this branch, the ssif_state will remain SSIF_GETTING_FLAGS
and can't send msg, no timer started, can't unload.

We did a comparative test before and after adding this patch, and the
result is effective.

Fixes: 259307074bfc ("ipmi: Add SMBus interface driver (SSIF)")

Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index a5ddebb1edea..48be3694fa64 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -784,9 +784,9 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 		} else if (data[0] != (IPMI_NETFN_APP_REQUEST | 1) << 2
 			   || data[1] != IPMI_GET_MSG_FLAGS_CMD) {
 			/*
-			 * Don't abort here, maybe it was a queued
-			 * response to a previous command.
+			 * Recv error response, give up.
 			 */
+			ssif_info->ssif_state = SSIF_IDLE;
 			ipmi_ssif_unlock_cond(ssif_info, flags);
 			dev_warn(&ssif_info->client->dev,
 				 "Invalid response getting flags: %x %x\n",
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
