Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E39D5F5D5F
	for <lists+openipmi-developer@lfdr.de>; Thu,  6 Oct 2022 01:53:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogECY-0000JF-Gt;
	Wed, 05 Oct 2022 23:53:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ogECW-0000J9-TF
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fUpQg31qLSafDWUcMgUao3TMT+hDdWkhTyRDacQF7uQ=; b=POnR2sMZ8tOSNNvJOLndAVEI1O
 M8rgz6LmlaRE5fKglNUVjloardXDw7LdQ0sUYNWVm2+tlAl/aVMQpbGKcOpMX20TO2fAKmi2NAeZM
 H/9RPX6m9WKrG4Ay1FSl3rCXXKYfXfLPq4KVS7ZYPfLfxQjS4XhlFgWb0Go/YU+k4FV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fUpQg31qLSafDWUcMgUao3TMT+hDdWkhTyRDacQF7uQ=; b=jdsvuRdrmPkDFHgQiX/ljOKbtE
 DCGxeKQcHrSo7owfHYMXMiKcHSKXxMfY/xlFl66M3LTdRMHsOkDQP1fVopw04E0ZJ4HW+RDtIzxWa
 CRTRqQjsfDRuleiaLRJ6UnTWiijELq7dXtuNgXnz9iGUAK8jkVtT0VyAT49GTJ0u+TS8=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogECT-00E4Qy-Mg for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:53:20 +0000
Received: by mail-qt1-f177.google.com with SMTP id w2so157386qtv.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 05 Oct 2022 16:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fUpQg31qLSafDWUcMgUao3TMT+hDdWkhTyRDacQF7uQ=;
 b=aM4GmOwECMjw5l+6WPAkjD95HWW14o1oUdCNLymwXqDtwYnovROQVfse+/38It/BnU
 bz6JXDMVSPU9QCZgwYQgcZsFFwnMunvi41/w24Vlyvjw9SRyFkfd0b+YF4Jupx/w1XJQ
 5LoVH/pyiY3gnxBzZbsU5Zi8J55p7svv7P8f2rfYQpBpQzQwNOVa92u6d6U0yi1/NhjH
 SPc8QzmVX8yfb/U3KAVJcgpp/Z2AmvFuQeGnkYk2/xGpfy+9EyyD8s8HkPJ2uSf6RLwY
 y5ddeigsWn/6VaZsQdFBT9/RFRvv0zV9Njgqxi8xEwwl1/MV/WrrskuGmBsf56xNnCkV
 hScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=fUpQg31qLSafDWUcMgUao3TMT+hDdWkhTyRDacQF7uQ=;
 b=akkExe+RBJWZvnTMLoVqSROZ+7T1ODw3Yon74OrT5sEwuddYOta59+pQynz7twoY42
 iKtF+vpoytmVz6mMpIAGQrx6YJ0IeczTOOKrAcZ6GhTI9L8na27OzZW7xq904ViftPhN
 1OeZsRr4OPjmqzRnlYfPFauEDmRwIWSoj04Yk+J8PS+Ohl/iPVcNv7AhWIVNeSLofQca
 GYooc5JsQXeOgYk+6quKt7ffOB0VqNqAq/Mi9kmMoIbVn6Yew9/zZgfLBG3kyS6kz7Gv
 Tc8gFZL9k6/wRMMkrc3i+4tdHGTOfC9HNrK25uOSD77WK/xeF2Kr96EYFRpjS/7qUGk+
 9dFg==
X-Gm-Message-State: ACrzQf1v1cwWNuhAndylevYDd/iE7nuBe0EirnTO+nzKoZjn4VfiHZVa
 cxKhIdVxB7hIPUVm1wBZfA==
X-Google-Smtp-Source: AMsMyM7m3ZznC2N6vijBuwEzRYV9NyM1wkH4hn9XNVHWQUQZQGyIYol4VV1OoYMqoKHVzo1kf7YGHQ==
X-Received: by 2002:a05:622a:1109:b0:35b:ae57:5a6c with SMTP id
 e9-20020a05622a110900b0035bae575a6cmr1572054qty.23.1665013991706; 
 Wed, 05 Oct 2022 16:53:11 -0700 (PDT)
Received: from serve.minyard.net ([47.184.185.126])
 by smtp.gmail.com with ESMTPSA id
 y17-20020ac83e91000000b0038d9555b580sm3526480qtf.44.2022.10.05.16.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Oct 2022 16:53:11 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:2d13:71e3:7ea0:219])
 by serve.minyard.net (Postfix) with ESMTPSA id 61E83180015;
 Wed,  5 Oct 2022 23:53:10 +0000 (UTC)
Date: Wed, 5 Oct 2022 18:53:06 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <Yz4Y4piC+e1mftLi@minyard.net>
References: <20221004093106.1653317-1-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221004093106.1653317-1-quan@os.amperecomputing.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 04, 2022 at 04:31:03PM +0700, Quan Nguyen wrote:
 > This series add support the SSIF BMC driver which is to perform in-band
 > IPMI communication with their host in management (BMC) side. > [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ogECT-00E4Qy-Mg
Subject: Re: [Openipmi-developer] [PATCH v10 0/3] Add SSIF BMC driver
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
Reply-To: minyard@acm.org
Cc: devicetree@vger.kernel.org, thang@os.amperecomputing.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Brendan Higgins <brendan.higgins@linux.dev>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 04, 2022 at 04:31:03PM +0700, Quan Nguyen wrote:
> This series add support the SSIF BMC driver which is to perform in-band
> IPMI communication with their host in management (BMC) side.
> 
> SSIF BMC driver in this series is tested with Aspeed AST2500 and AST2600

I have applied the two IPMI patches to the IPMI tree for 6.2.  Thanks
for sticking with this.

-corey

> 
> Discussion for v9:
> https://lore.kernel.org/lkml/20220929080326.752907-1-quan@os.amperecomputing.com/
> 
> v10:
>   + Issuing RxCmdLast command for all errnos                   [Wolfram]
> 
> v9:
>   + Fix dependence with I2C subsystem                            [Randy]
>   + Update missing Reviewed-by tag from v7                         [Rob]
>   + Remove useless error handling path                              [CJ]
>   + Update comment for SSIF_ABORTING state                          [CJ]
>   + Fix "unknown type name --u8"                     [kernel test robot]
>   + Update commit message and add comment to explain
>     the effect of issuing RxCmdLast when Slave busy               [Quan]
> 
> v8:
>   + Dropped ssif_bmc.h file and move its content to ssif_bmc.c   [Corey]
>   + Add struct ipmi_ssif_msg to include/uapi/linux/ipmi_ssif_bmc.h
>   header file                                                    [Corey]
>   + Use unsigned int for len field in struct ipmi_ssif_msg       [Corey]
>   + Avoid using packed structure                                 [Corey]
>   + Add comment to clarify the logic flow                        [Corey]
>   + Fix multipart read end with len=0 issue                      [Corey]
>   + Refactor code handle the too big request message             [Corey]
>   + Fix code indentation issue                                   [Corey]
>   + Clean buffer before receiving request to avoid garbage        [Quan]
>   + Fix the license to SPDX-License-Identifier: GPL-2.0-only      [Quan]
> 
> v7:
>   + Remove unnecessary del_timer() in response_timeout()         [Corey]
>   + Change compatible string from "ampere,ssif-bmc" to "ssif-bmc"  [Jae]
>   + Dropped the use of ssif_msg_len() macro, use the len directly [Quan]
>   + Solve possible issue if both response timer and ssif_bmc_write()
>   occurred at the same time                                      [Corey]
>   + Fix wrong return type of ssif_bmc_poll()         [kernel robot test]
>   + Refactor and introduce ssif_part_buffer struct to replace the
>   response_buf to manage each send/receive part of ssif           [Quan]
>   + Change SSIF_BAD_SMBUS state to SSIF_ABORTING state           [Corey]
>   + Support abort feature to skip the current bad request/response and
>   wait until next new request                                    [Corey]
>   + Refactor the PEC calculation to avoid the re-calculate the PEC on
>   each I2C_SLAVE_WRITE_RECEIVED event                             [Quan]
>   + Fix the use of error-proned idx                              [Corey]
>   + Defer the test for valid SMBus command until the read/write part
>   is determined                                                   [Quan]
>   + Change/split unsupported_smbus_cmd() to
>   supported_[write|read]_cmd()                                   [Corey]
>   + Abort the request if somehow its size exceeded 255 bytes      [Quan]
> 
> v6:
>   + Drop the use of slave_enable()                             [Wolfram]
>   + Make i2c-aspeed to issue RxCmdLast command on all
>   I2C_SLAVE_WRITE_REQUESTED event to assert NAK when slave busy   [Quan]
>   + Make i2c slave to return -EBUSY when it's busy                [Quan]
>   + Drop the aborting feature as return Completion Code 0xFF may stop
>   host to retry and make ipmi_ssif.so fails to load               [Quan]
>   + Add timer to recover slave from busy state when no response   [Quan]
>   + Clean request/response buffer appropriately                   [Quan]
>   + Add some minor change on error and warning messages           [Quan]
> 
> v5:
>   + Correct the patches order to fix the bisect issue found by
>   kernel build robot
> 
> v4:
>   + Fix recursive spinlock                                      [Graeme]
>   + Send response with Completion code 0xFF when aborting         [Quan]
>   + Fix warning with dt_binding_check                              [Rob]
>   + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml                  [Quan]
>   + Added bounding check on SMBus writes and the whole request     [Dan]
>   + Moved buffer to end of struct ssif_bmc_ctx to avoid context
>     corruption if somehow buffer is written past the end           [Dan]
>   + Return -EINVAL if userspace buffer too small, don't
>     silence truncate                                       [Corey, Joel]
>   + Not necessary to check NONBLOCK in lock                      [Corey]
>   + Enforce one user at a time                                    [Joel]
>   + Reject write with invalid response length from userspace     [Corey]
>   + Add state machines for better ssif bmc state handling         [Quan]
>   + Drop ssif_bmc_aspeed.c and make ssif_bmc.c is generic
>     SSIF BMC driver                                               [Quan]
>   + Change compatible string "aspeed,ast2500-ssif-bmc" to
>     "ampere,ssif-bmc"                                             [Quan]
>   + Toggle Slave enable in i2c-aspeed to turn on/off slave mode   [Ryan]
>   + Added slave_enable() to struct i2c_algorithm to control
>     slave mode and to address the recursive spinlock      [Graeme, Ryan]
>   + Abort current request with invalid SMBus write or
>     invalid command                                               [Quan]
>   + Abort all request if there is pending response                [Quan]
>   + Changed validate_pec() to validate_request()                  [Quan]
>   + Add unsupported_smbus_cmd() to handle unknown SMBus command   [Quan]
>   + Print internal state string for ease investigating issue      [Quan]
>   + Move to READY state on SLAVE_STOP event                       [Quan]
>   + Change initilize_transfer() to process_smbus_cmd()            [Quan]
>   + Introduce functions for each slave event                      [Quan]
> 
> v3:
>   + Switched binding doc to use DT schema format                   [Rob]
>   + Splited into generic ssif_bmc and aspeed-specific      [Corey, Joel]
>   + Removed redundant license info                                [Joel]
>   + Switched to use traditional if-else                           [Joel]
>   + Removed unused ssif_bmc_ioctl()                               [Joel]
>   + Made handle_request()/complete_response() to return void      [Joel]
>   + Refactored send_ssif_bmc_response() and
>   receive_ssif_bmc_request()                                     [Corey]
>   + Remove mutex                                                 [Corey]
>   + Use spin_lock/unlock_irqsave/restore in callback             [Corey]
>   + Removed the unnecessary memset                               [Corey]
>   + Switch to use dev_err()                                      [Corey]
>   + Combine mask/unmask two interrupts together                  [Corey]
>   + Fixed unhandled Tx done with NAK                              [Quan]
>   + Late ack'ed Tx done w/wo Ack irq                              [Quan]
>   + Use aspeed-specific exported aspeed_set_slave_busy() when
>   slave busy to fix the deadlock                 [Graeme, Philipp, Quan]
>   + Clean buffer for last multipart read                          [Quan]
>   + Handle unknown incoming command                               [Quan]
> 
> v2:
>   + Fixed compiling error with COMPILE_TEST for arc
> 
> Quan Nguyen (3):
>   ipmi: ssif_bmc: Add SSIF BMC driver
>   bindings: ipmi: Add binding for SSIF BMC driver
>   i2c: aspeed: Assert NAK when slave is busy
> 
>  .../devicetree/bindings/ipmi/ssif-bmc.yaml    |  38 +
>  drivers/char/ipmi/Kconfig                     |  10 +
>  drivers/char/ipmi/Makefile                    |   1 +
>  drivers/char/ipmi/ssif_bmc.c                  | 873 ++++++++++++++++++
>  drivers/i2c/busses/i2c-aspeed.c               |   9 +-
>  include/uapi/linux/ipmi_ssif_bmc.h            |  18 +
>  6 files changed, 948 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
>  create mode 100644 drivers/char/ipmi/ssif_bmc.c
>  create mode 100644 include/uapi/linux/ipmi_ssif_bmc.h
> 
> -- 
> 2.35.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
