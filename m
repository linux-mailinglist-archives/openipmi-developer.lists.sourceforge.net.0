Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE96BACF89
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Sep 2025 15:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:Date:To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u/Ks9uPUUQPoAbPCWGeQCi048kd9vjxXT2Ilf0kfvQo=; b=lCBxwQsvlH9CI9dx16ffO1GuS4
	j+kuvfVdMpfBE5xSEr7pD9Pybemyl+3e4h6l7dWbGJyxRzJaAqHVWA605lYJW3ryCptBl6DwN1Fyv
	nIGSnzR+0ai6FhRpP7A8yvG5oOSfkse+43vUrRn4wldURGr4u6RztERBQ0XOhjl+18y0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v3a3E-0002U3-Pd;
	Tue, 30 Sep 2025 13:05:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guojinhui.liam@bytedance.com>) id 1v3V1b-0001rk-H5
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l+MFzw/am516PEFKIA1HZN/VZns9FQH6Q0OdRD4dEOQ=; b=adCvxM61Hv1ynrnnCD6MtpGAoE
 6tWEKFxzCClTa/82GpkvdiQN2zcd06fdokdDG4yy3uDUyCVS6u0l2rbWiNgdlpStA4n5cp3B+6k82
 +UGigGvBeXjhM+yPfXnAEHSpzMIaQ48kyG8fgoxmVW0LT5+mC873cr986qFnLmoekfok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l+MFzw/am516PEFKIA1HZN/VZns9FQH6Q0OdRD4dEOQ=; b=aS+KsyENf7HpSskWc2S0m9B4Jy
 8rgH/4u5bCK5Uz1RL9FJKMSy68rh+PCOJNLdZzsIg0zGtXQ1SqMjcV0Eiko8JPKs2QalRRSEOBtYl
 W619RIbrcs9CH49kx3WDjYkb6/td4JziXyZDvMc/DMR7bc696ksoS3OlYyTV81Pj+h00=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v3V1b-0000nI-46 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:43:51 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-267f0fe72a1so43617855ad.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Sep 2025 00:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1759218225; x=1759823025;
 darn=lists.sourceforge.net; 
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=l+MFzw/am516PEFKIA1HZN/VZns9FQH6Q0OdRD4dEOQ=;
 b=cGg+tyY/lXNc6frahVCoy5x/lbo7xoZynuGp0qm/m4nQV6kZDNgNjaRRn98NdUDf6s
 QQjaVn8DvExUvr7on82mOEo1B8IJESyDWkfjOKOerJjMsx7N+HvZ6nTYvEfzm5FqjQIo
 nnHk9FID6f0bSVC7EiuzwNMfvA7q9R/SbtR8ixBPNRcotbqxD3BkYWrPqDKCDJqOyrO1
 RIl9fGWwW9XZFmVffX9fjYG3HEPbLI6JLn95lgtU52O//SSQc+KJvaHRWFl+4Ft0IDHU
 W5aR5L23tQSbcBPOiHNQp4JQafhIM9t96gT1O0sIFLO+lAPsElUt2rwHQ7rCIA1pGaO3
 0YxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759218225; x=1759823025;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l+MFzw/am516PEFKIA1HZN/VZns9FQH6Q0OdRD4dEOQ=;
 b=pMzVMDRZU5UOgCuzoEXYLIDbHfx9TtxRw80sCPsxJsTCFd0DJ21YMeliClti/OgBdA
 CPGVuXf3ItLDghDmenQCbOwX0iSRhMO7I2RnxTcfguiVV01UZnb6UnCQ30JiJL6bN0ag
 UOskf9PZW4qq5C3ebAAF/fAbuYPV37ucZ6B7lVaWl1YsgbeQbV6NwTK5Cww2BEYCU/X3
 FPapF+PV0ir/bxsGDbsQhG5O4WfxFt4TqvBupftBAtHQmGWITGUl0OvRaPE/pjT8CXkZ
 0//heeHjiEG8TAerJkruk0Sm+iWbeimOwJndI5FpA1Qqa8/yyRjnSThlxdHqiJVQl7Ob
 f/DA==
X-Gm-Message-State: AOJu0YzozVplXE3TsXLuD7X6GYUDNOzxSxlM8p8bEYOyCxY4srFLAXYl
 vQ9cwch8l8e8eYWnf0XxyU+d6o6PDwyKBsq2zpZDHGv7+PfoMiu3BTCWEzIMup8v9aA=
X-Gm-Gg: ASbGncu3mewwJIr4TSa9EilJpl3SoWOaFT6azfhgL+lmsTZaYtEUz8K/mio90WHcZWy
 GHUUYiCswN8gZIsGv478xaaQYr0OOxd96ijuJ0wB0qebHgJZx09OkITSGJSomT/AQbQzQIWaYz5
 tqReQ1SNER8+Li16xdZeGKOk5CVUUi/GZjQj0XOBu62OiB2LdwPQF6s5tPZU0dowDlmcmRqMhIo
 dGEr6I6acJr5BGPtwO9xhrixNOKE+dExA5fjaSCfeGX64rau9Gsi+Uc8Nwf5wbpWl/SvTkEohdV
 nPJXHRV3ruyGMrBOFU8ugU7SGsoICKmllURBixyg6lYVADxK56m7rT0kF5WTd5F6kqnx8qtqPS0
 BMBkZT4rollkGwtl+JbXSnneFv8s3woBYQHuETq/UXBR7FerYlK9QGcLf/0uTb4ynnSKuZ9/Ozz
 7zkMmq0HoBlwPR5gkT9sZb6C0=
X-Google-Smtp-Source: AGHT+IEz5W4HFaTVSimEhs34yYbp0/rsgNJrvabhbkCWMxTkpZ90HkeOCYdscjnIU5ruvu9wBwJzwA==
X-Received: by 2002:a17:902:f64d:b0:259:5284:f87b with SMTP id
 d9443c01a7336-27ed49d0965mr208847315ad.16.1759218225403; 
 Tue, 30 Sep 2025 00:43:45 -0700 (PDT)
Received: from 5CG3510V44-KVS.bytedance.net ([139.177.225.243])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-338386f577bsm3535374a91.2.2025.09.30.00.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Sep 2025 00:43:44 -0700 (PDT)
To: corey@minyard.net
Date: Tue, 30 Sep 2025 15:42:37 +0800
Message-Id: <20250930074239.2353-2-guojinhui.liam@bytedance.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
References: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The race window between __scan_channels() and
 deliver_response()
 causes the parameters of some channels to be set to 0. 1.[CPUA]
 __scan_channels()
 issues an IPMI request and waits with wait_event() until all channels have
 been scanned. wait_event() internally calls might_sleep(), which might yield
 the CPU. (Moreover, a [...] 
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
 [209.85.214.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v3V1b-0000nI-46
X-Mailman-Approved-At: Tue, 30 Sep 2025 13:05:51 +0000
Subject: [Openipmi-developer] [PATCH v2 1/3] ipmi: Fix the race between
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

The race window between __scan_channels() and deliver_response() causes
the parameters of some channels to be set to 0.

1.[CPUA] __scan_channels() issues an IPMI request and waits with
         wait_event() until all channels have been scanned.
         wait_event() internally calls might_sleep(), which might
         yield the CPU. (Moreover, an interrupt can preempt
         wait_event() and force the task to yield the CPU.)
2.[CPUB] deliver_response() is invoked when the CPU receives the
         IPMI response. After processing a IPMI response,
         deliver_response() directly assigns intf->wchannels to
         intf->channel_list and sets intf->channels_ready to true.
         However, not all channels are actually ready for use.
3.[CPUA] Since intf->channels_ready is already true, wait_event()
         never enters __wait_event(). __scan_channels() immediately
         clears intf->null_user_handler and exits.
4.[CPUB] Once intf->null_user_handler is set to NULL, deliver_response()
         ignores further IPMI responses, leaving the remaining
	 channels zero-initialized and unusable.

CPUA                             CPUB
-------------------------------  -----------------------------
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

Fix the race between __scan_channels() and deliver_response() by
deferring both the assignment intf->channel_list = intf->wchannels
and the flag intf->channels_ready = true until all channels have
been successfully scanned or until the IPMI request has failed.

Signed-off-by: Jinhui Guo <guojinhui.liam@bytedance.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 8e9050f99e9e..a6e2e8246ab1 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3406,8 +3406,6 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 			intf->channels_ready = true;
 			wake_up(&intf->waitq);
 		} else {
-			intf->channel_list = intf->wchannels + set;
-			intf->channels_ready = true;
 			rv = send_channel_info_cmd(intf, intf->curr_channel);
 		}
 
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
