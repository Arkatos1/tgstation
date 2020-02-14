import { Fragment } from 'inferno';
import { act } from '../byond';
import { Table, AnimatedNumber, Box, Button, Section, Tabs } from '../components';

export const BountyConsole = props => {
  const { state } = props;
  const { config, data } = state;
  const { ref } = config;
  let available_bounties = [
    ...data.available_bounties,
  ];
  let completed_bounties = [
    ...data.completed_bounties,
  ];
  return (
    <Tabs>
      <Tabs.Tab
        key="available"
        label="Available"
        icon="list"
        lineHeight="23px">
        {() => (
          <Section
            title="Nanotrasen Cargo Bounties"
            buttons={(
              <Fragment>
                <Box inline bold>
                  <AnimatedNumber value={Math.round(data.credits)} /> credits
                </Box>
                {' '}
                <Button
                  icon={'print'}
                  content="Print Bounties"
                  onClick={() => act(ref, 'print')} />
              </Fragment>
            )}>
            <Bounties state={state} bounties={available_bounties} />
          </Section>
        )}
      </Tabs.Tab>
      <Tabs.Tab
        key="completed"
        label="Completed"
        icon="check"
        lineHeight="23px">
        {() => (
          <Section
            title="Completed Bounties"
            buttons={(
              <Fragment>
                <Box inline bold>
                  <AnimatedNumber value={Math.round(data.credits)} /> credits
                </Box>
                {' '}
                <Button
                  icon={'print'}
                  content="Print Bounties"
                  onClick={() => act(ref, 'print')} />
              </Fragment>
            )}>
            <Bounties state={state} bounties={completed_bounties} />
          </Section>
        )}
      </Tabs.Tab>
    </Tabs>
  );
};

const Bounties = props => {
  const { state, bounties } = props;
  const { config } = state;
  const { ref } = config;
  let cellstyle={
    'vertical-align': 'middle',
    'horizontal-align': 'middle',
    'text-align': 'center',
    'min-width': '50px',
    'min-height': '60px'
  }
  return (
    <Table border = "1">
      {bounties.map((bounty => {
        return (
          <Table.Row key={bounty.name}>
            <Table.Cell color = "label" style={cellstyle}>
              {bounty.name}
            </Table.Cell>
            <Table.Cell style={cellstyle}>
              {bounty.description}
            </Table.Cell>
            <Table.Cell color = "label" style={cellstyle}>
              {bounty.reward}
            </Table.Cell>
            <Table.Cell color = "label" collapsing style={cellstyle}>
              {bounty.units}
            </Table.Cell>
            <Table.Cell color = "label" collapsing style={cellstyle}>
              <Button
                icon={bounty.claimed ? 'check' : 'hand-point-up'}
                disabled={!bounty.can_claim}
                content={bounty.claimed ? 'Completed' : 'Claim'}
                onClick={() => act(ref, 'claim', {
                  'ref': bounty.ref,
                })} />
            </Table.Cell>
          </Table.Row>
        );
      }))}
    </Table>
  );
};
