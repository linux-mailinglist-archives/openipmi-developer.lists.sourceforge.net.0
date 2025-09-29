Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A89BACF8B
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Sep 2025 15:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mSa075gg9Mew+Wd6b6TImbqRr1i4HQJXcrto1k/lSTk=; b=NLdVPyLjXHzPuz9ZVZb1PjD/RI
	fBsWBCRVrbPW8XkSJhBDgA75J1wNVo8WGnKlfADI5lsnjqy0uHQWuQNW97metGusNK2t9MzUK+pmm
	Syh1pUKkeLeXidmFM8emZqqU1zlnRa53PR6A3D9489lFNA+t1uL3OBzJkay6m/84s7dk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v3a3E-0002Tr-5N;
	Tue, 30 Sep 2025 13:05:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guojinhui.liam@bytedance.com>) id 1v39Ud-0003AI-3Y
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Sep 2025 08:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sj/9RNZ+daEA1X7yKVXnnH8RJIjqfJc52SMXbLdJl+Q=; b=IczrRk1t7N4MIIIol2UA1kxQkP
 +bMqLZheFvGs7mAb5X5H9CuB9YbHcqrj33JgFuw5o0LR07sMEztHNCOiy5GbYqUD3VtZoK414O99H
 JzIr9qxNNV1xU9tu2FPXLXozHDi5eqCSiKo2ysMRc1OlSSJMDJsgo78JzPnaEj/t+KFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sj/9RNZ+daEA1X7yKVXnnH8RJIjqfJc52SMXbLdJl+Q=; b=jxap2Yh6+S1z25mmGLk2QAfzni
 OD0zqUnVinwDPCNabQn7KVmADEPAw/XCOe36DzgktEvc0Sh43NnbKUz8aHqG+jRShn7T++xUy4kMR
 FgB25dkK/YkV6vSgpUwFjB8vn8I630Wxr+3q8oDLvWb0JbqfC+98nO9jQvlSpW5NCoas=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v39Ud-00023r-7V for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Sep 2025 08:44:23 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 46e09a7af769-7b00927607eso1595647a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Sep 2025 01:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1759135452; x=1759740252;
 darn=lists.sourceforge.net; 
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sj/9RNZ+daEA1X7yKVXnnH8RJIjqfJc52SMXbLdJl+Q=;
 b=LVU7ETikCCIDaTFBI0XPApqwedw0SAhcbM9X/zoj+FrM84+vJn44Jo2/9oNiqjVOmL
 dQEOD83zIZkfTjmWCTsNrbOfJNB4tCvnhs4p9d87pH5VNwRERlfdSqc0Div6rSxpbVz4
 UFdd1K4Ufa6wrtUEScjCKWOE/g/aAa670jcAtpgFE4z2j7NUObQfUM6+jSSz2g71bHvk
 cCmVo1I1KPZf1L9DRcfQy94zOz1VLozqrYSfDSPJJXbtaMFyXE8sVxa0w5gKR//kGgNr
 vsUg+wIp342ZVxp4ZUE0kr+0szk9NmiAfK4VliuTHfiosCDTN4zZcHsLxgq0c1JCdLhE
 94BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759135452; x=1759740252;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sj/9RNZ+daEA1X7yKVXnnH8RJIjqfJc52SMXbLdJl+Q=;
 b=Ak5oAAzV6KNhFLsr37YaeAUkxK2I66lM/8qSVj8cLUSljES/9dLxVWLBcuRPJM1PH6
 qJUY473/r56cEfEMYGsP2NKb3J1Y3vSWDmKdh6cTqF6F6DyZk6exG4iDWVfaYt4oeESM
 SCbKqQeNrLOvRlpxM2FsMRR2enWulSaAJzGcM6rtkrFn27CSKrCPLTQEk7AL4T5hQExW
 zWSz+Lv2oGAEQ0zgMInF1TvI2SQDMMFDuDIeUC47uIzTg1NeywclC7yNkVqqIUyiNJol
 OciTbC9qLzbyaP/z+sP3YjDj+DVDMQzgR5d5E1Bop80G25isEtYNQvr/1JZVmmOzY3Ze
 NyVw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdlKah79unCfLcgAXBGfPP7SORa8gKO8B93DQO5YvaPkT4bwPPZqlx7c3xX0vQGgTKx3mlH6Tgvm8EISMSUjFHqGA=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwISWFh/e+6yyon8GMd0v00BkIwfMO/myEU1CAF4AYqkoy1r/oO
 QJXn86p8svn8khyAs3PhEh23f15shRNP3awKmyYkzrt6NYYSXyjtCgZUknb4d4M3SqFgVKTpc2z
 oe9Uypw0=
X-Gm-Gg: ASbGncshYkCpKjlYX47OkmyNnsJ50/r8I88KJZo8sHSwi+IMfsWbqxtk9iqfHMgIgJp
 HVTf7fmGxocqjQf/M4GaTYjf+QO6cos19lKIiBY/uvqR0lErqqUot7C/vWsKjU6lDXvmm2OZi3p
 2XrszdpOVzAnByNVrFx6NqnbPjFpv36Xc00adX1nnSR5JQEvOZItlGJGtTlmXuitxBvlfgUPyyX
 vRVmlCTwzRam6kBNqHm1Y8vZ//zONNEGQxsj3M+0Ds9Hkyo/0mZm4eSBUfzXeXrvaJXZ+Slj3Dl
 CIf0B5HPBw8G1ccDv2NNGvGhsgPTMngBjp2NcXd0CZMP2a2ikD5BJVmS6nq8NBb2kcmhgbDzI0W
 9CmHFQg3qPB/N260S+bdr66ysYs4cZ2d6iHOAH+++38FPIJ4fRqwY36Pfxyyn5nGHeAncJqIze2
 0=
X-Google-Smtp-Source: AGHT+IGiP419V4N9F1bGIFD547BjpWNVr9OZdtoGYQyB69UrN3gsFpDrq3xuXiy3FTY/yZwcTTCLTQ==
X-Received: by 2002:a17:90a:d60f:b0:32e:3837:284f with SMTP id
 98e67ed59e1d1-3342a2d8c3dmr18391337a91.21.1759133796626; 
 Mon, 29 Sep 2025 01:16:36 -0700 (PDT)
Received: from 5CG3510V44-KVS.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3341be36bdesm16286509a91.24.2025.09.29.01.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Sep 2025 01:16:35 -0700 (PDT)
To: corey@minyard.net
Date: Mon, 29 Sep 2025 16:16:02 +0800
Message-Id: <20250929081602.1901-1-guojinhui.liam@bytedance.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The command "ipmi -b -t" would occasionally fail: #ipmitool
 -b 6 -t 0x2c raw 0x6 0x01 Unable to send command: Invalid argument Unable
 to send RAW command (channel=0x6 netfn=0x6 lun=0x0 cmd=0x1) The race window
 between __scan_channels() and deliver_response() causes the parameters of
 some channels to be set to 0. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v39Ud-00023r-7V
X-Mailman-Approved-At: Tue, 30 Sep 2025 13:05:51 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Close the race between
 __scan_channels() and deliver_response()
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
From: Jinhui Guo via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jinhui Guo <guojinhui.liam@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, guojinhui.liam@bytedance.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The command "ipmi -b -t" would occasionally fail:
  #ipmitool -b 6 -t 0x2c raw 0x6 0x01
  Unable to send command: Invalid argument
  Unable to send RAW command (channel=0x6 netfn=0x6 lun=0x0 cmd=0x1)

The race window between __scan_channels() and deliver_response() causes
the parameters of some channels to be set to 0.

1.[CPUA] After ipmi_add_smi() calling __bmc_get_device_id() ->
         __scan_channels(), the intf->channels_ready is set to true and
	 is never cleared by any function. ipmi_add_smi() then invokes
	 __scan_channels(), which issues an IPMI request and waits with
	 wait_event() until all channels have been scanned. wait_event()
         internally calls might_sleep(), which might yield the CPU.
         (wait_event() could also be interrupted by an interrupt, causing
	 the task to yield the CPU.)
2.[CPUB] deliver_response() is invoked when the CPU receives the IPMI
         response. After processing a IPMI response, deliver_response()
         directly assigns intf->wchannels to intf->channel_list and sets
	 intf->channels_ready to true. However, not all channels are actually
	 ready for use.
3.[CPUA] Since intf->channels_ready is already true, wait_event() never
         enters __wait_event(). __scan_channels() immediately clears
	 intf->null_user_handler and exits.
4.[CPUB] Once intf->null_user_handler is set to NULL, deliver_response()
         ignores further IPMI responses, leaving the remaining channels
	 zero-initialized and unusable.

CPUA                             CPUB
-------------------------------  -----------------------------
ipmi_add_smi()
 __scan_channels()
  intf->null_user_handler
        = channel_handler;
  send_channel_info_cmd(intf,
        0);
  wait_event(intf->waitq,
	intf->channels_ready);
   do {
    might_sleep();
                                 deliver_response()
                                  channel_handler()
                                   intf->channel_list =
				         intf->wchannels + set;
                                   intf->channels_ready = true;
                                   send_channel_info_cmd(intf,
				          intf->curr_channel);
    if (condition)
     break;
    __wait_event(wq_head,
	    condition);
   } while(0)
  intf->null_user_handler
        = NULL;
                                 deliver_response()
                                  if (!msg->user)
                                   if (intf->null_user_handler)
                                    rv = -EINVAL;
                                  return rv;
-------------------------------  -----------------------------

Fix the race between __scan_channels() and deliver_response() with the
following changes.

1. Drop the redundant __scan_channels() call in ipmi_add_smi(), the
   function is already invoked via ipmi_add_smi() -> __bmc_get_device_id()
   -> __scan_channels().
2. channel_handler() sets intf->channels_ready to true but no one clears
   it, preventing __scan_channels() from rescanning channels. Clear
   intf->channels_ready to false in channel_handler() before starting
   the channel scan.
3. Only assign intf->channel_list = intf->wchannels and set
   intf->channels_ready = true in channel_handler() after all channels
   have been successfully scanned or after failing to send the IPMI
   request.

Signed-off-by: Jinhui Guo <guojinhui.liam@bytedance.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 8e9050f99e9e..73dab3b21221 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3405,11 +3405,8 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 			intf->channel_list = intf->wchannels + set;
 			intf->channels_ready = true;
 			wake_up(&intf->waitq);
-		} else {
-			intf->channel_list = intf->wchannels + set;
-			intf->channels_ready = true;
+		} else
 			rv = send_channel_info_cmd(intf, intf->curr_channel);
-		}
 
 		if (rv) {
 			/* Got an error somehow, just give up. */
@@ -3433,6 +3430,9 @@ static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
 {
 	int rv;
 
+	/* Clear channels_ready to force channels rescan. */
+	intf->channels_ready = false;
+
 	if (ipmi_version_major(id) > 1
 			|| (ipmi_version_major(id) == 1
 			    && ipmi_version_minor(id) >= 5)) {
@@ -3633,12 +3633,6 @@ int ipmi_add_smi(struct module         *owner,
 		goto out_err_started;
 	}
 
-	mutex_lock(&intf->bmc_reg_mutex);
-	rv = __scan_channels(intf, &id);
-	mutex_unlock(&intf->bmc_reg_mutex);
-	if (rv)
-		goto out_err_bmc_reg;
-
 	intf->nr_users_devattr = dev_attr_nr_users;
 	sysfs_attr_init(&intf->nr_users_devattr.attr);
 	rv = device_create_file(intf->si_dev, &intf->nr_users_devattr);
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
