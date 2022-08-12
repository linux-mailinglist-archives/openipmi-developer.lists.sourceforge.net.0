Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9765917A8
	for <lists+openipmi-developer@lfdr.de>; Sat, 13 Aug 2022 01:49:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oMePP-0007PI-9U;
	Fri, 12 Aug 2022 23:49:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jay.vosburgh@canonical.com>) id 1oMePO-0007PC-59
 for openipmi-developer@lists.sourceforge.net;
 Fri, 12 Aug 2022 23:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z3vTFZWRsV4/5gaNEmDxCFHbPhta/52sD1bRkj9cJlI=; b=ZfTKwiL/PpJXlseSRZ7j89CQjF
 UfRFnvcE1a+HksT7JteXi0Xe4gdg40lp/Q9u1nG04eIRVhaTgWFj5+8CwQcOkIOR/uIc96hlraW61
 PNffYjAiVfmWOvlQtWQNczB0Tih26hrYe1k9YaJ8Db8BEHYTUIicGyHtZJr71TBNDdLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z3vTFZWRsV4/5gaNEmDxCFHbPhta/52sD1bRkj9cJlI=; b=FAZ1g7ilSrDpGFdSMMNPxQ3UCb
 nRi8Ni36iloIXNW/WBWN0XfeulsdjOzI/j9bzklbLPOt5aD4qbkCmpJCBdEeyIBE3W0cOm7+ZudoM
 C+0S7k8cDckJRPgc1b7/bzwkDlBh+4ofS5mOa5K0mKSPvjaU1EqjvxMXQysAyIZKCLw8=;
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oMePJ-000D74-Jh for openipmi-developer@lists.sourceforge.net;
 Fri, 12 Aug 2022 23:49:42 +0000
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5F3A43F13E
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Aug 2022 23:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1660347201;
 bh=Z3vTFZWRsV4/5gaNEmDxCFHbPhta/52sD1bRkj9cJlI=;
 h=From:To:Cc:Subject:MIME-Version:Content-Type:Date:Message-ID;
 b=vgxahE80FgEh0YXPwmc8HOVpWyXFUYUPxRfbD5BGQ/4uG+VtwXpbmCglKuHZzThmW
 WI/XHJbVhv9DwFveV7RVlqg/pMpb7JBE5Jm+GtmAnbtJcq7jzknoE/97zn9eUY4cF3
 hAVNXW93sfr2Tl/twSB9QXhlnJEI4h5nPA6rrBDckzOyJuMXUpi2gz5SU89bbCaJ/B
 XeG/i5HiRWmttdi96TSHarf0iu26mpcj93qRRTnV1juUbKivJhXml+j4bOp1rlH0TY
 glIpG9JPQ/cmSeRDqISTg1juyub5k6J0A4NnuYT3ZRVhkl04cime0y4sU6crZR6HGD
 SRbLZ7xCh6cTw==
Received: by mail-pj1-f69.google.com with SMTP id
 e11-20020a17090a630b00b001f8b2deb88dso2635764pjj.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Aug 2022 16:33:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=Z3vTFZWRsV4/5gaNEmDxCFHbPhta/52sD1bRkj9cJlI=;
 b=atwNvZXUX4SQNhDPOmjIjx08L0HmIyYDqrJkXyR9Fp0q2kVAgLnHFPj3ilVY88+PZ3
 212SsS0/KQEpvIRImISVdHcnE/NP1Z+QaggFaUjBEB5vaiIFGwtYDTUg3AJuPmhZovKb
 VS7zgvlhngZDO9RrktuRLytind7yr/GgM/PiK7lYt0U6uSsXZi3NfA6JuT6c3Tq3WOZg
 lMghyAkDDn8GzXhVgwnBst8oyHix1D/yd7Svc3nYP/eSXfF5Vd+ubf2rWSb1qku89c9O
 kN/aP8yEEr8bBNvv2DQmAZRqD1aK7mvKI7O0c14HIrBS2Ex/YI8NQ5EoewuMIRYenBCh
 mvYQ==
X-Gm-Message-State: ACgBeo29aGvZMnzcHcGZSWk9AWdSMz7OQJZQ6pj7J5T1YrjwgfWzy7At
 QyK6CxCmHBXditEy7r/PdN0S7Dg+6fCqoC67fSFUSoPSxAEDP/d8dL65awZ1WQjYwbIYaNHdiBG
 R4rtMtFUfvkCEM5RVr2JgX2dv2pC9fe3HXq0AP0j8oWrsdki87T1WLhSLYg==
X-Received: by 2002:a17:90b:4acd:b0:1f4:cf0c:7a68 with SMTP id
 mh13-20020a17090b4acd00b001f4cf0c7a68mr6350144pjb.178.1660347199621; 
 Fri, 12 Aug 2022 16:33:19 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4LeyexgCkbt0iQzpWEuglCZmI/K+9YFkKMHQkK8NnCjzob9lRvvL4zvqmgM7dqtGXunVrfMg==
X-Received: by 2002:a17:90b:4acd:b0:1f4:cf0c:7a68 with SMTP id
 mh13-20020a17090b4acd00b001f4cf0c7a68mr6350115pjb.178.1660347199091; 
 Fri, 12 Aug 2022 16:33:19 -0700 (PDT)
Received: from famine.localdomain ([50.125.80.157])
 by smtp.gmail.com with ESMTPSA id
 t7-20020a1709027fc700b0016d737bff00sm2312550plb.220.2022.08.12.16.33.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Aug 2022 16:33:18 -0700 (PDT)
Received: by famine.localdomain (Postfix, from userid 1000)
 id 3AA4B6119B; Fri, 12 Aug 2022 16:33:18 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 33DBD9FA79;
 Fri, 12 Aug 2022 16:33:18 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: openipmi-developer@lists.sourceforge.net
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <1094.1660347198.1@famine>
Date: Fri, 12 Aug 2022 16:33:18 -0700
Message-ID: <1095.1660347198@famine>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We have observed issues wherein the IPMI driver will sleep
 forever in uninterruptible wait with mutexes held (specifically, dyn_mutex
 and bmc_reg_mutex, acquired by __bmc_get_device_id). This occurs u [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.122 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oMePJ-000D74-Jh
Subject: [Openipmi-developer] [PATCH] ipmi: don't wait forever when querying
 BMC device id
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
Cc: Ioanna-Maria Alifieraki <ioanna-maria.alifieraki@canonical.com>,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

We have observed issues wherein the IPMI driver will sleep forever in
uninterruptible wait with mutexes held (specifically, dyn_mutex and
bmc_reg_mutex, acquired by __bmc_get_device_id).  This occurs ultimately
due to a BMC firmware bug; the BMC will fail to respond to requests,
apparently related to the request rate, and the current logic will wait
forever.

When the problem occurs, as each successive process queries the BMC,
they will block in D state waiting to acquire the mutex, and with time
the machine hangs. The BMC vendor has agreed it may be a hardware fault.

This patch addresses the problem by replacing wait_event() with
wait_event_timeout(). If the event times out (meaning the problem has
occurred) the bmc->dyn_id_set and bmc->dyn_guid_set are set to 0 and the
process eventually returns.

Fixes: aa9c9ab2443e ("ipmi: allow dynamic BMC version information")
Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>

---
 drivers/char/ipmi/ipmi_msghandler.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 703433493c85..a510839853b5 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2572,7 +2572,9 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
 	if (rv)
 		goto out_reset_handler;
 
-	wait_event(intf->waitq, bmc->dyn_id_set != 2);
+	rv = wait_event_timeout(intf->waitq, bmc->dyn_id_set != 2, HZ * 5);
+	if (!rv)
+		bmc->dyn_id_set = 0;
 
 	if (!bmc->dyn_id_set) {
 		if (bmc->cc != IPMI_CC_NO_ERROR &&
@@ -3337,11 +3339,15 @@ static void __get_guid(struct ipmi_smi *intf)
 	bmc->dyn_guid_set = 2;
 	intf->null_user_handler = guid_handler;
 	rv = send_guid_cmd(intf, 0);
-	if (rv)
+	if (rv) {
 		/* Send failed, no GUID available. */
 		bmc->dyn_guid_set = 0;
-	else
-		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
+	} else {
+		rv = wait_event_timeout(intf->waitq, bmc->dyn_guid_set != 2,
+					HZ * 5);
+		if (!rv)
+			bmc->dyn_guid_set = 0;
+	}
 
 	/* dyn_guid_set makes the guid data available. */
 	smp_rmb();
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
